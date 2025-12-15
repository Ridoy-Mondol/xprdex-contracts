import * as _chain from "as-chain";
import {
  Asset,
  check,
  Contract,
  InlineAction,
  isAccount,
  Name,
  PermissionLevel,
  requireAuth,
  Symbol,
  TableStore,
  TimePointSec,
  U128,
} from "proton-tsc";
import {
  PairsTable,
  OrdersTable,
  TradesTable,
  BalancesTable,
  ConfigTable,
  FeesTable,
} from "./tables";
import { TokenTransfer } from "./orderbook.inline";

@contract
export class orderbook extends Contract {
  private pairsTable: TableStore<PairsTable> = new TableStore<PairsTable>(
    this.receiver,
    this.receiver
  );

  private ordersTable: TableStore<OrdersTable> = new TableStore<OrdersTable>(
    this.receiver,
    this.receiver
  );

  private tradesTable: TableStore<TradesTable> = new TableStore<TradesTable>(
    this.receiver,
    this.receiver
  );

  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
    this.receiver,
    this.receiver
  );

  private feesTable: TableStore<FeesTable> = new TableStore<FeesTable>(
    this.receiver,
    this.receiver
  );

  @action("init")
  init(admin: Name, fee_recipient: Name): void {
    requireAuth(this.receiver);

    const existing = this.configTable.get(0);
    check(!existing, "DEX already initialized");

    const config = new ConfigTable(
      0,
      admin,
      false,
      1,
      100,
      1,
      100,
      fee_recipient
    );

    this.configTable.store(config, this.receiver);
  }

  /**
   * ========================================
   * PAIR MANAGEMENT ACTIONS
   * ========================================
   */

  /**
   * Create a new trading pair
   */

  @action("createpair")
  createPair(
    base_symbol: Symbol,
    base_contract: Name,
    quote_symbol: Symbol,
    quote_contract: Name,
    min_order_size: Asset,
    max_order_size: Asset,
    tick_size: Asset,
    maker_fee_bp: u16,
    taker_fee_bp: u16
  ): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    check(isAccount(base_contract), "Base contract does not exist");
    check(isAccount(quote_contract), "Quote contract does not exist");
    check(
      maker_fee_bp >= config.min_maker_fee_bp &&
        maker_fee_bp <= config.max_maker_fee_bp,
      "Maker fee out of range"
    );
    check(
      taker_fee_bp >= config.min_taker_fee_bp &&
        taker_fee_bp <= config.max_taker_fee_bp,
      "Taker fee out of range"
    );
    check(
      max_order_size.amount > min_order_size.amount,
      "Max must be greater than min"
    );

    const pair_id = this.pairsTable.availablePrimaryKey;

    const pair = new PairsTable(
      pair_id,
      base_symbol,
      base_contract,
      quote_symbol,
      quote_contract,
      min_order_size,
      max_order_size,
      tick_size,
      maker_fee_bp,
      taker_fee_bp,
      "active",
      new TimePointSec()
    );

    this.pairsTable.store(pair, this.receiver);
  }

  /**
   * Pause/Resume trading pair
   */
  @action("pausepair")
  pausePair(pair_id: u64, pause: string): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    pair.status = pause;
    this.pairsTable.update(pair, this.receiver);
  }

  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    if (to != this.receiver) return;
    if (from == this.receiver) return;
    if (memo != "deposit") return;

    // Auto-deposit all transfers to DEX
    const token_contract = this.firstReceiver;
    const balancesTable = new TableStore<BalancesTable>(this.receiver, from);
    const symbol_code = quantity.symbol.code();
    const existing = balancesTable.get(symbol_code);

    if (existing) {
      existing.balance = Asset.add(existing.balance, quantity);
      existing.updated_at = new TimePointSec();

      balancesTable.update(existing, this.receiver);
    } else {
      const newBalance = new BalancesTable(
        token_contract,
        quantity,
        new Asset(0, quantity.symbol),
        new TimePointSec()
      );
      balancesTable.store(newBalance, this.receiver);
    }
  }

  /**
   * ========================================
   * ORDER PLACEMENT (MetalX Style)
   * ========================================
   */

  /**
   * Place limit order
   */
  @action("limitorder")
  LimitOrder(
    user: Name,
    pair_id: u64,
    side: string,
    price: Asset,
    amount: Asset
  ): void {
    requireAuth(user);

    const config = this.getConfig();
    check(!config.paused, "DEX is paused");

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    check(pair.status == "active", "Trading paused for this pair");

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount >= pair.min_order_size.amount, "Below min order size");
    check(
      amount.amount <= pair.max_order_size.amount,
      "Exceeds max order size"
    );
    check(price.amount > 0, "Price must be positive");

    const remainder = price.amount % pair.tick_size.amount;

    check(remainder == 0, "Price must be multiple of tick size");

    const total_value = this.calculateTotalValue(price, amount, pair);

    this.lockBalance(user, side, amount, total_value, pair);

    const order_id = this.ordersTable.availablePrimaryKey;

    const order = new OrdersTable(
      order_id,
      pair_id,
      user,
      side,
      "limit",
      price,
      amount,
      new Asset(0, amount.symbol),
      amount,
      new Asset(0, price.symbol),
      false,
      0,
      new TimePointSec(),
      new TimePointSec()
    );

    this.ordersTable.store(order, this.receiver);
  }

  /**
   * Place market order
   */
  @action("marketorder")
  marketOrder(user: Name, pair_id: u64, side: string, amount: Asset): void {
    requireAuth(user);

    const config = this.getConfig();
    check(!config.paused, "DEX is paused");

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    check(pair.status == "active", "Trading paused");

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");

    // For market orders, estimate total value from orderbook
    const estimatedPrice = this.estimateMarketPrice(pair_id, side);
    const total_value = this.calculateTotalValue(estimatedPrice, amount, pair);

    // Lock balance
    this.lockBalance(user, side, amount, total_value, pair);

    // Create order
    const order_id = this.ordersTable.availablePrimaryKey;
    const now = new TimePointSec();

    const order = new OrdersTable(
      order_id,
      pair_id,
      user,
      side,
      "market",
      estimatedPrice,
      amount,
      new Asset(0, amount.symbol),
      amount,
      new Asset(0, estimatedPrice.symbol),
      false,
      0,
      now,
      now
    );

    this.ordersTable.store(order, this.receiver);
  }

  @action("stoploss")
  stopLossOrder(
    user: Name,
    pair_id: u64,
    side: string,
    trigger_price: Asset,
    limit_price: Asset,
    amount: Asset
  ): void {
    requireAuth(user);

    const config = this.getConfig();
    check(!config.paused, "DEX is paused");

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    check(pair.status == "active", "Trading paused for this pair");

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount >= pair.min_order_size.amount, "Below min order size");
    check(
      amount.amount <= pair.max_order_size.amount,
      "Exceeds max order size"
    );
    check(trigger_price.amount > 0, "Trigger price must be positive");
    check(limit_price.amount > 0, "Limit price must be positive");

    const currentPrice = this.getCurrentMarketPrice(pair_id);

    if (side == "buy") {
      check(
        trigger_price.amount >= currentPrice.amount,
        "Buy stop-loss trigger must be above current price"
      );
    } else {
      check(
        trigger_price.amount <= currentPrice.amount,
        "Sell stop-loss trigger must be below current price"
      );
    }

    const total_value = this.calculateTotalValue(limit_price, amount, pair);

    this.lockBalance(user, side, amount, total_value, pair);

    const order = new OrdersTable(
      this.ordersTable.availablePrimaryKey,
      pair_id,
      user,
      side,
      "stoploss",
      limit_price,
      amount,
      new Asset(0, amount.symbol),
      amount,
      trigger_price,
      false,
      0,
      new TimePointSec(),
      new TimePointSec()
    );

    this.ordersTable.store(order, this.receiver);
  }

  /**
   * ========================================
   * ORDER PROCESSING (MetalX Batch Style)
   * ========================================
   */

  /**
   * Process orders from limit queue
   */
  @action("processlimit")
  processLimit(pair_id: u64, max_orders: u32): void {
    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    let processed: u32 = 0;

    let order = this.ordersTable.first();
    while (order != null && processed < max_orders) {
      const currentOrder = order;

      if (
        currentOrder.pair_id == pair_id &&
        currentOrder.order_type == "limit" &&
        (currentOrder.status == 0 || currentOrder.status == 1)
      ) {
        let matchOrder = this.ordersTable.first();

        while (matchOrder != null && processed < max_orders) {
          const currentMatch = matchOrder;

          // Skip same order
          if (currentOrder.order_id != currentMatch.order_id) {
            if (
              currentMatch.pair_id == pair_id &&
              currentMatch.order_type == "limit" &&
              (currentMatch.status == 0 || currentMatch.status == 1) &&
              currentOrder.side != currentMatch.side &&
              this.canMatch(currentOrder, currentMatch)
            ) {
              const tradeAmount = this.calculateTradeAmount(
                currentOrder,
                currentMatch
              );

              this.executeTrade(
                currentOrder,
                currentMatch,
                currentMatch.price,
                tradeAmount,
                pair
              );

              processed++;

              const updated = this.ordersTable.get(currentOrder.order_id);
              if (updated && updated.status == 2) {
                break; // order fully filled
              }
            }
          }

          matchOrder = this.ordersTable.next(currentMatch);
        }
      }

      order = this.ordersTable.next(currentOrder);
    }
  }

  /**
   * Process stop-loss/take-profit orders
   * Checks if trigger conditions are met and activates orders
   */

  @action("processsltpq")
  processStopLossTakeProfit(pair_id: u64, max_orders: u32): void {
    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    const currentPrice = this.getCurrentMarketPrice(pair_id);

    let processed: u32 = 0;

    let order = this.ordersTable.first();

    while (order != null && processed < max_orders) {
      const currentOrder = order;

      // Only process stop-loss orders for this pair that haven't been triggered
      if (
        currentOrder.pair_id == pair_id &&
        currentOrder.order_type == "stoploss" &&
        !currentOrder.is_triggered &&
        (currentOrder.status == 0 || currentOrder.status == 1)
      ) {
        let shouldTrigger = false;

        if (currentOrder.side == "buy") {
          // Buy stop-loss: Trigger when market price >= trigger price
          shouldTrigger =
            currentPrice.amount >= currentOrder.trigger_price.amount;
        } else {
          // Sell stop-loss: Trigger when market price <= trigger price
          shouldTrigger =
            currentPrice.amount <= currentOrder.trigger_price.amount;
        }

        if (shouldTrigger) {
          currentOrder.is_triggered = true;
          currentOrder.order_type = "limit";
          currentOrder.updated_at = new TimePointSec();

          this.ordersTable.update(currentOrder, this.receiver);

          this.matchStopLossOrder(currentOrder, pair);

          processed++;
        }
      }

      order = this.ordersTable.next(currentOrder);
    }
  }

  /**
   * ========================================
   * WITHDRAWAL
   * ========================================
   */

  /**
   * Withdraw all available balance for user
   */
  @action("withdrawall")
  withdrawAll(user: Name): void {
    requireAuth(user);

    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

    let balance = balancesTable.first();

    while (balance != null) {
      const current = balance;

      if (current.balance.amount > 0) {
        this.transfer(
          current.token_contract,
          this.receiver,
          user,
          current.balance,
          "DEX withdrawal"
        );

        current.balance = new Asset(0, current.balance.symbol);
        current.updated_at = new TimePointSec();

        balancesTable.update(current, this.receiver);
      }
      balance = balancesTable.next(current);
    }
  }

  /**
   * Withdraw specific token amount
   */
  @action("withdraw")
  withdraw(user: Name, quantity: Asset): void {
    requireAuth(user);

    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
    const balance = balancesTable.requireGet(
      quantity.symbol.code(),
      "No balance found"
    );

    check(balance.balance.amount >= quantity.amount, "Insufficient balance");

    balance.balance = Asset.sub(balance.balance, quantity);
    balance.updated_at = new TimePointSec();

    balancesTable.update(balance, this.receiver);

    this.transfer(
      balance.token_contract,
      this.receiver,
      user,
      quantity,
      "DEX withdrawal"
    );
  }

  /**
   * ========================================
   * ORDER CANCELLATION
   * ========================================
   */

  @action("cancelorder")
  cancelOrder(user: Name, order_id: u64): void {
    requireAuth(user);

    const order = this.ordersTable.requireGet(order_id, "Order not found");

    check(order.user == user, "Not your order");
    check(order.status == 0 || order.status == 1, "Cannot cancel this order");

    const pair = this.pairsTable.requireGet(order.pair_id, "Pair not found");

    this.unlockBalance(
      order.user,
      order.side,
      order.remaining_amount,
      pair,
      order.price
    );

    order.status = 3;
    order.updated_at = new TimePointSec();

    this.ordersTable.update(order, this.receiver);
  }

  /**
   * ========================================
   * PRIVATE HELPER FUNCTIONS
   * ========================================
   */

  /**
   * Get DEX configuration
   */
  private getConfig(): ConfigTable {
    const config = this.configTable.requireGet(0, "DEX not initialized");
    return config;
  }

  private estimateMarketPrice(pair_id: u64, side: string): Asset {
    let order = this.ordersTable.first();
    let bestPrice: i64 = 0;

    while (order != null) {
      if (
        order.pair_id == pair_id &&
        order.side != side &&
        (order.status == 0 || order.status == 1)
      ) {
        if (bestPrice == 0) {
          bestPrice = order.price.amount;
        } else if (side == "buy" && order.price.amount < bestPrice) {
          // Buy → want lowest ask
          bestPrice = order.price.amount;
        } else if (side == "sell" && order.price.amount > bestPrice) {
          // Sell → want highest bid
          bestPrice = order.price.amount;
        }
      }

      order = this.ordersTable.next(order);
    }

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    return new Asset(bestPrice > 0 ? bestPrice : 1, pair.quote_symbol);
  }

  private calculateTotalValue(
    price: Asset,
    amount: Asset,
    pair: PairsTable
  ): Asset {
    const base_precision = pair.base_symbol.precision();
    const value_amount =
      (price.amount * amount.amount) / u64(Math.pow(10, base_precision));
    return new Asset(value_amount, pair.quote_symbol);
  }

  private lockBalance(
    user: Name,
    side: string,
    amount: Asset,
    total_value: Asset,
    pair: PairsTable
  ): void {
    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

    if (side == "buy") {
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Insufficient quote token"
      );
      check(balance.balance.amount >= total_value.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, total_value);
      balance.locked = Asset.add(balance.locked, total_value);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    } else {
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Insufficient base token"
      );
      check(balance.balance.amount >= amount.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, amount);
      balance.locked = Asset.add(balance.locked, amount);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    }
  }

  private unlockBalance(
    user: Name,
    side: string,
    remaining_amount: Asset,
    pair: PairsTable,
    price: Asset
  ): void {
    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

    if (side == "buy") {
      const locked_value = this.calculateTotalValue(
        price,
        remaining_amount,
        pair
      );
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Balance error"
      );

      balance.locked = Asset.sub(balance.locked, locked_value);
      balance.balance = Asset.add(balance.balance, locked_value);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    } else {
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Balance error"
      );

      balance.locked = Asset.sub(balance.locked, remaining_amount);
      balance.balance = Asset.add(balance.balance, remaining_amount);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    }
  }

  private canMatch(order1: OrdersTable, order2: OrdersTable): bool {
    if (order1.side == "buy") {
      return order1.price.amount >= order2.price.amount;
    } else {
      return order1.price.amount <= order2.price.amount;
    }
  }

  private matchStopLossOrder(
    stopLossOrder: OrdersTable,
    pair: PairsTable
  ): void {
    let matchOrder = this.ordersTable.first();

    while (matchOrder != null) {
      const currentMatch = matchOrder;

      if (stopLossOrder.order_id != currentMatch.order_id) {
        if (
          currentMatch.pair_id == pair.pair_id &&
          (currentMatch.order_type == "limit" ||
            currentMatch.order_type == "stoploss") &&
          (currentMatch.status == 0 || currentMatch.status == 1) &&
          stopLossOrder.side != currentMatch.side &&
          this.canMatch(stopLossOrder, currentMatch)
        ) {
          const tradeAmount = this.calculateTradeAmount(
            stopLossOrder,
            currentMatch
          );

          this.executeTrade(
            stopLossOrder,
            currentMatch,
            currentMatch.price,
            tradeAmount,
            pair
          );

          const updated = this.ordersTable.get(stopLossOrder.order_id);
          if (updated && updated.status == 2) {
            break;
          }
        }
      }

      matchOrder = this.ordersTable.next(currentMatch);
    }
  }

  private getCurrentMarketPrice(pair_id: u64): Asset {
    let lastTrade: TradesTable | null = null;
    let trade = this.tradesTable.first();

    while (trade != null) {
      if (trade.pair_id == pair_id) {
        if (lastTrade == null || trade.trade_id > lastTrade.trade_id) {
          lastTrade = trade;
        }
      }
      trade = this.tradesTable.next(trade);
    }

    if (lastTrade != null) {
      return lastTrade.price;
    }

    // Fallback: Get mid-price from orderbook
    const bestBid = this.getBestBidPrice(pair_id);
    const bestAsk = this.getBestAskPrice(pair_id);

    if (bestBid.amount > 0 && bestAsk.amount > 0) {
      const midPrice = (bestBid.amount + bestAsk.amount) / 2;
      const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
      return new Asset(midPrice, pair.quote_symbol);
    }

    // No price available
    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    return new Asset(0, pair.quote_symbol);
  }

  /**
   * Get best bid (highest buy) price
   */
  private getBestBidPrice(pair_id: u64): Asset {
    let order = this.ordersTable.first();
    let bestPrice: i64 = 0;
    let priceSymbol: Symbol = new Symbol();

    while (order != null) {
      if (
        order.pair_id == pair_id &&
        order.side == "buy" &&
        (order.status == 0 || order.status == 1)
      ) {
        if (order.price.amount > bestPrice) {
          bestPrice = order.price.amount;
          priceSymbol = order.price.symbol;
        }
      }
      order = this.ordersTable.next(order);
    }

    return new Asset(bestPrice, priceSymbol);
  }

  /**
   * Get best ask (lowest sell) price
   */
  private getBestAskPrice(pair_id: u64): Asset {
    let order = this.ordersTable.first();
    let bestPrice: i64 = 0;
    let priceSymbol: Symbol = new Symbol();

    while (order != null) {
      if (
        order.pair_id == pair_id &&
        order.side == "sell" &&
        (order.status == 0 || order.status == 1)
      ) {
        if (bestPrice == 0 || order.price.amount < bestPrice) {
          bestPrice = order.price.amount;
          priceSymbol = order.price.symbol;
        }
      }
      order = this.ordersTable.next(order);
    }

    return new Asset(bestPrice, priceSymbol);
  }

  private calculateTradeAmount(
    order1: OrdersTable,
    order2: OrdersTable
  ): Asset {
    const amount1 = order1.remaining_amount.amount;
    const amount2 = order2.remaining_amount.amount;
    // const minAmount = Math.min(
    //   order1.remaining_amount.amount,
    //   order2.remaining_amount.amount
    // );
    const minAmount = amount1 < amount2 ? amount1 : amount2;
    return new Asset(minAmount, order1.amount.symbol);
  }

  private executeTrade(
    order1: OrdersTable,
    order2: OrdersTable,
    executionPrice: Asset,
    tradeAmount: Asset,
    pair: PairsTable
  ): void {
    const buyOrder = order1.side == "buy" ? order1 : order2;
    const sellOrder = order1.side == "sell" ? order1 : order2;

    const buyer = buyOrder.user;
    const seller = sellOrder.user;

    const totalValue = this.calculateTotalValue(
      executionPrice,
      tradeAmount,
      pair
    );

    const buyerFeeAmount = (totalValue.amount * u64(pair.taker_fee_bp)) / 10000;
    const buyerFee = new Asset(buyerFeeAmount, pair.quote_symbol);

    const sellerFeeAmount =
      (tradeAmount.amount * u64(pair.maker_fee_bp)) / 10000;
    const sellerFee = new Asset(sellerFeeAmount, pair.base_symbol);

    this.updateTradeBalances(
      buyer,
      seller,
      tradeAmount,
      totalValue,
      buyerFee,
      sellerFee,
      pair
    );

    this.updateOrderAfterTrade(buyOrder, tradeAmount);
    this.updateOrderAfterTrade(sellOrder, tradeAmount);

    const tradeId = this.tradesTable.availablePrimaryKey;
    const trade = new TradesTable(
      tradeId,
      pair.pair_id,
      buyOrder.order_id,
      sellOrder.order_id,
      buyer,
      seller,
      executionPrice,
      tradeAmount,
      totalValue,
      buyerFee,
      sellerFee,
      new TimePointSec()
    );

    this.tradesTable.store(trade, this.receiver);

    this.recordFee(pair.pair_id, pair.quote_contract, buyerFee, false);
    this.recordFee(pair.pair_id, pair.base_contract, sellerFee, true);
  }

  private updateTradeBalances(
    buyer: Name,
    seller: Name,
    tradeAmount: Asset,
    totalValue: Asset,
    buyerFee: Asset,
    sellerFee: Asset,
    pair: PairsTable
  ): void {
    const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
    const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);

    const buyerBase = buyerBalances.get(pair.base_symbol.code());
    if (buyerBase) {
      buyerBase.balance = Asset.add(buyerBase.balance, tradeAmount);
      buyerBase.updated_at = new TimePointSec();

      buyerBalances.update(buyerBase, this.receiver);
    } else {
      const balance = new BalancesTable(
        pair.base_contract,
        tradeAmount,
        new Asset(0, tradeAmount.symbol),
        new TimePointSec()
      );

      buyerBalances.store(balance, this.receiver);
    }

    const buyerQuote = buyerBalances.requireGet(
      pair.quote_symbol.code(),
      "Buyer balance error"
    );
    const buyerTotal = Asset.add(totalValue, buyerFee);
    buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotal);
    buyerQuote.updated_at = new TimePointSec();

    buyerBalances.update(buyerQuote, this.receiver);

    const sellerBase = sellerBalances.requireGet(
      pair.base_symbol.code(),
      "Seller balance error"
    );
    const sellerTotal = Asset.add(tradeAmount, sellerFee);

    sellerBase.locked = Asset.sub(sellerBase.locked, sellerTotal);
    sellerBase.updated_at = new TimePointSec();

    sellerBalances.update(sellerBase, this.receiver);

    const sellerQuote = sellerBalances.get(pair.quote_symbol.code());
    if (sellerQuote) {
      sellerQuote.balance = Asset.add(sellerQuote.balance, totalValue);
      sellerQuote.updated_at = new TimePointSec();

      sellerBalances.update(sellerQuote, this.receiver);
    } else {
      const balance = new BalancesTable(
        pair.quote_contract,
        totalValue,
        new Asset(0, totalValue.symbol),
        new TimePointSec()
      );

      sellerBalances.store(balance, this.receiver);
    }
  }

  private updateOrderAfterTrade(order: OrdersTable, tradeAmount: Asset): void {
    order.filled_amount = Asset.add(order.filled_amount, tradeAmount);
    order.remaining_amount = Asset.sub(order.remaining_amount, tradeAmount);
    order.status = order.remaining_amount.amount == 0 ? 2 : 1;
    order.updated_at = new TimePointSec();

    this.ordersTable.update(order, this.receiver);
  }

  private recordFee(
    pair_id: u64,
    token_contract: Name,
    feeAmount: Asset,
    isMaker: bool
  ): void {
    const compositeKey = this.createCompositeKey(
      pair_id,
      feeAmount.symbol.code()
    );

    // const allFees = this.feesTable.first();
    let existing: FeesTable | null = this.feesTable.first();

    while (existing != null) {
      const current = existing;

      if (U128.eq(current.bypairtoken, compositeKey)) {
        break;
      }
      existing = this.feesTable.next(current);
    }

    if (existing != null) {
      existing.total_collected = Asset.add(existing.total_collected, feeAmount);
      if (isMaker) {
        existing.maker_fees = Asset.add(existing.maker_fees, feeAmount);
      } else {
        existing.taker_fees = Asset.add(existing.taker_fees, feeAmount);
      }
      existing.last_updated = new TimePointSec();

      this.feesTable.update(existing, this.receiver);
    } else {
      // Create new fee row
      const newFee = new FeesTable(
        this.feesTable.availablePrimaryKey,
        pair_id,
        token_contract,
        feeAmount,
        isMaker ? feeAmount : new Asset(0, feeAmount.symbol),
        isMaker ? new Asset(0, feeAmount.symbol) : feeAmount,
        new TimePointSec()
      );
      this.feesTable.store(newFee, this.receiver);
    }
  }

  private createCompositeKey(pair_id: u64, symbol_code: u64): U128 {
    const high = U128.fromU64(pair_id);
    const shifted = U128.shl(high, 64);
    const low = U128.fromU64(symbol_code);
    return U128.or(shifted, low);
  }

  private transfer(
    tokenContract: Name,
    from: Name,
    to: Name,
    quantity: Asset,
    memo: string
  ): void {
    const transfer = new InlineAction<TokenTransfer>("transfer");

    const action = transfer.act(
      tokenContract,
      new PermissionLevel(this.receiver, Name.fromU64(0x3232EDA800000000))
    );

    const transferParams = new TokenTransfer(from, to, quantity, memo);

    action.send(transferParams);
  }
}


class initAction implements _chain.Packer {
    constructor (
        public admin: _chain.Name | null = null,
        public fee_recipient: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.admin!);
        enc.pack(this.fee_recipient!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.admin! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.fee_recipient! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.admin!.getSize();
        size += this.fee_recipient!.getSize();
        return size;
    }
}

class createPairAction implements _chain.Packer {
    constructor (
        public base_symbol: _chain.Symbol | null = null,
        public base_contract: _chain.Name | null = null,
        public quote_symbol: _chain.Symbol | null = null,
        public quote_contract: _chain.Name | null = null,
        public min_order_size: _chain.Asset | null = null,
        public max_order_size: _chain.Asset | null = null,
        public tick_size: _chain.Asset | null = null,
        public maker_fee_bp: u16 = 0,
        public taker_fee_bp: u16 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.base_symbol!);
        enc.pack(this.base_contract!);
        enc.pack(this.quote_symbol!);
        enc.pack(this.quote_contract!);
        enc.pack(this.min_order_size!);
        enc.pack(this.max_order_size!);
        enc.pack(this.tick_size!);
        enc.packNumber<u16>(this.maker_fee_bp);
        enc.packNumber<u16>(this.taker_fee_bp);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Symbol();
            dec.unpack(obj);
            this.base_symbol! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.base_contract! = obj;
        }
        
        {
            let obj = new _chain.Symbol();
            dec.unpack(obj);
            this.quote_symbol! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.quote_contract! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.min_order_size! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.max_order_size! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.tick_size! = obj;
        }
        this.maker_fee_bp = dec.unpackNumber<u16>();
        this.taker_fee_bp = dec.unpackNumber<u16>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.base_symbol!.getSize();
        size += this.base_contract!.getSize();
        size += this.quote_symbol!.getSize();
        size += this.quote_contract!.getSize();
        size += this.min_order_size!.getSize();
        size += this.max_order_size!.getSize();
        size += this.tick_size!.getSize();
        size += sizeof<u16>();
        size += sizeof<u16>();
        return size;
    }
}

class pausePairAction implements _chain.Packer {
    constructor (
        public pair_id: u64 = 0,
        public pause: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pair_id);
        enc.packString(this.pause);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pair_id = dec.unpackNumber<u64>();
        this.pause = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.pause);
        return size;
    }
}

class onTransferAction implements _chain.Packer {
    constructor (
        public from: _chain.Name | null = null,
        public to: _chain.Name | null = null,
        public quantity: _chain.Asset | null = null,
        public memo: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.from!);
        enc.pack(this.to!);
        enc.pack(this.quantity!);
        enc.packString(this.memo);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.quantity! = obj;
        }
        this.memo = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.from!.getSize();
        size += this.to!.getSize();
        size += this.quantity!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.memo);
        return size;
    }
}

class LimitOrderAction implements _chain.Packer {
    constructor (
        public user: _chain.Name | null = null,
        public pair_id: u64 = 0,
        public side: string = "",
        public price: _chain.Asset | null = null,
        public amount: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.user!);
        enc.packNumber<u64>(this.pair_id);
        enc.packString(this.side);
        enc.pack(this.price!);
        enc.pack(this.amount!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.user! = obj;
        }
        this.pair_id = dec.unpackNumber<u64>();
        this.side = dec.unpackString();
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.price! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.amount! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.user!.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.side);
        size += this.price!.getSize();
        size += this.amount!.getSize();
        return size;
    }
}

class marketOrderAction implements _chain.Packer {
    constructor (
        public user: _chain.Name | null = null,
        public pair_id: u64 = 0,
        public side: string = "",
        public amount: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.user!);
        enc.packNumber<u64>(this.pair_id);
        enc.packString(this.side);
        enc.pack(this.amount!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.user! = obj;
        }
        this.pair_id = dec.unpackNumber<u64>();
        this.side = dec.unpackString();
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.amount! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.user!.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.side);
        size += this.amount!.getSize();
        return size;
    }
}

class stopLossOrderAction implements _chain.Packer {
    constructor (
        public user: _chain.Name | null = null,
        public pair_id: u64 = 0,
        public side: string = "",
        public trigger_price: _chain.Asset | null = null,
        public limit_price: _chain.Asset | null = null,
        public amount: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.user!);
        enc.packNumber<u64>(this.pair_id);
        enc.packString(this.side);
        enc.pack(this.trigger_price!);
        enc.pack(this.limit_price!);
        enc.pack(this.amount!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.user! = obj;
        }
        this.pair_id = dec.unpackNumber<u64>();
        this.side = dec.unpackString();
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.trigger_price! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.limit_price! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.amount! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.user!.getSize();
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.side);
        size += this.trigger_price!.getSize();
        size += this.limit_price!.getSize();
        size += this.amount!.getSize();
        return size;
    }
}

class processLimitAction implements _chain.Packer {
    constructor (
        public pair_id: u64 = 0,
        public max_orders: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pair_id);
        enc.packNumber<u32>(this.max_orders);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pair_id = dec.unpackNumber<u64>();
        this.max_orders = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u32>();
        return size;
    }
}

class processStopLossTakeProfitAction implements _chain.Packer {
    constructor (
        public pair_id: u64 = 0,
        public max_orders: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pair_id);
        enc.packNumber<u32>(this.max_orders);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pair_id = dec.unpackNumber<u64>();
        this.max_orders = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u32>();
        return size;
    }
}

class withdrawAllAction implements _chain.Packer {
    constructor (
        public user: _chain.Name | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.user!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.user! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.user!.getSize();
        return size;
    }
}

class withdrawAction implements _chain.Packer {
    constructor (
        public user: _chain.Name | null = null,
        public quantity: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.user!);
        enc.pack(this.quantity!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.user! = obj;
        }
        
        {
            let obj = new _chain.Asset();
            dec.unpack(obj);
            this.quantity! = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.user!.getSize();
        size += this.quantity!.getSize();
        return size;
    }
}

class cancelOrderAction implements _chain.Packer {
    constructor (
        public user: _chain.Name | null = null,
        public order_id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.user!);
        enc.packNumber<u64>(this.order_id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.user! = obj;
        }
        this.order_id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.user!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new orderbook(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0x74DD900000000000) {//init
            const args = new initAction();
            args.unpack(actionData);
            mycontract.init(args.admin!,args.fee_recipient!);
        }
		if (action == 0x45D46CAAA675C000) {//createpair
            const args = new createPairAction();
            args.unpack(actionData);
            mycontract.createPair(args.base_symbol!,args.base_contract!,args.quote_symbol!,args.quote_contract!,args.min_order_size!,args.max_order_size!,args.tick_size!,args.maker_fee_bp,args.taker_fee_bp);
        }
		if (action == 0xA9B58554CEB80000) {//pausepair
            const args = new pausePairAction();
            args.unpack(actionData);
            mycontract.pausePair(args.pair_id,args.pause);
        }
		
		if (action == 0x8BA4ECD2E955C000) {//limitorder
            const args = new LimitOrderAction();
            args.unpack(actionData);
            mycontract.LimitOrder(args.user!,args.pair_id,args.side,args.price!,args.amount!);
        }
		if (action == 0x91AF0566974AAE00) {//marketorder
            const args = new marketOrderAction();
            args.unpack(actionData);
            mycontract.marketOrder(args.user!,args.pair_id,args.side,args.amount!);
        }
		if (action == 0xC66958D318000000) {//stoploss
            const args = new stopLossOrderAction();
            args.unpack(actionData);
            mycontract.stopLossOrder(args.user!,args.pair_id,args.side,args.trigger_price!,args.limit_price!,args.amount!);
        }
		if (action == 0xADE8856311749D90) {//processlimit
            const args = new processLimitAction();
            args.unpack(actionData);
            mycontract.processLimit(args.pair_id,args.max_orders);
        }
		if (action == 0xADE88563188E6B60) {//processsltpq
            const args = new processStopLossTakeProfitAction();
            args.unpack(actionData);
            mycontract.processStopLossTakeProfit(args.pair_id,args.max_orders);
        }
		if (action == 0xE3B2D4DCDC346200) {//withdrawall
            const args = new withdrawAllAction();
            args.unpack(actionData);
            mycontract.withdrawAll(args.user!);
        }
		if (action == 0xE3B2D4DCDC000000) {//withdraw
            const args = new withdrawAction();
            args.unpack(actionData);
            mycontract.withdraw(args.user!,args.quantity!);
        }
		if (action == 0x41A68546974AAE00) {//cancelorder
            const args = new cancelOrderAction();
            args.unpack(actionData);
            mycontract.cancelOrder(args.user!,args.order_id);
        }
	}
  
	if (receiver != firstReceiver) {
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new onTransferAction();
            args.unpack(actionData);
            mycontract.onTransfer(args.from!,args.to!,args.quantity!,args.memo);
        }
	}
	return;
}
