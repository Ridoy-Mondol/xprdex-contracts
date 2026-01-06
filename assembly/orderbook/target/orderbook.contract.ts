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
  TokenStatTable,
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

    check(isAccount(admin), "Admin not found");
    check(isAccount(fee_recipient), "Fee Recipient account not found");

    const existing = this.configTable.get(0);

    if (existing) {
      existing.admin = admin;
      existing.fee_recipient = fee_recipient;

      this.configTable.update(existing, this.receiver);
    } else {
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

    this.verifyTokenExist(base_symbol, base_contract);
    this.verifyTokenExist(quote_symbol, quote_contract);

    check(
      base_symbol.code() != quote_symbol.code(),
      "Base and quote cannot be the same"
    );
    check(
      min_order_size.symbol.code() == base_symbol.code(),
      "Min order size must be in base asset"
    );
    check(
      max_order_size.symbol.code() == base_symbol.code(),
      "Max order size must be in base asset"
    );
    check(
      tick_size.symbol.code() == quote_symbol.code(),
      "Tick size must be in quote asset"
    );
    check(
      min_order_size.symbol.precision() == base_symbol.precision(),
      "Min order size precision mismatch"
    );
    check(
      max_order_size.symbol.precision() == base_symbol.precision(),
      "Max order size precision mismatch"
    );
    check(
      tick_size.symbol.precision() == quote_symbol.precision(),
      "Tick size precision mismatch"
    );

    check(min_order_size.amount > 0, "Min order size must be positive");
    check(max_order_size.amount > 0, "Max order size must be positive");
    check(tick_size.amount > 0, "Tick size must be positive");
    check(
      max_order_size.amount < 10_000_000_000_000,
      "Max order size too large"
    );
    check(tick_size.amount < 1_000_000_000, "Tick size too large");
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
    check(maker_fee_bp <= taker_fee_bp, "Maker fee cannot exceed taker fee");
    check(
      max_order_size.amount > min_order_size.amount,
      "Max order size must be greater than min order size"
    );

    // ✅ Check for duplicate pairs
    this.isPairExists(base_symbol, base_contract, quote_symbol, quote_contract);

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

  @action("updatepair")
  updatePair(
    pair_id: u64,
    min_order_size: Asset,
    max_order_size: Asset,
    tick_size: Asset
  ): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    // Validate precision matches
    check(
      min_order_size.symbol.code() == pair.base_symbol.code(),
      "Min order size must be base asset"
    );
    check(
      max_order_size.symbol.code() == pair.base_symbol.code(),
      "Max order size must be base asset"
    );
    check(
      tick_size.symbol.code() == pair.quote_symbol.code(),
      "Tick size must be quote asset"
    );
    check(
      min_order_size.symbol.precision == pair.base_symbol.precision,
      "Min order size precision mismatch"
    );
    check(
      max_order_size.symbol.precision == pair.base_symbol.precision,
      "Max order size precision mismatch"
    );
    check(
      tick_size.symbol.precision == pair.quote_symbol.precision,
      "Tick size precision mismatch"
    );

    pair.min_order_size = min_order_size;
    pair.max_order_size = max_order_size;
    pair.tick_size = tick_size;

    this.pairsTable.update(pair, this.receiver);
  }

  @action("clrpair")
  clearPair(): void {
    let pair = this.pairsTable.first();

    while (pair != null) {
      let nextPair = this.pairsTable.next(pair);
      this.pairsTable.remove(pair);
      pair = nextPair;
    }
  }

  /**
   * Pause/Resume trading pair
   */
  @action("setstatus")
  setPairStatus(pair_id: u64, new_status: string): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    check(
      new_status == "active" ||
        new_status == "paused" ||
        new_status == "disabled",
      "Invalid pair status"
    );
    check(pair.status != new_status, "Pair already in this state");

    pair.status = new_status;
    this.pairsTable.update(pair, this.receiver);
  }

  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    if (to != this.receiver) return;
    if (from == this.receiver) return;
    if (memo != "deposit") return;

    check(quantity.amount > 0, "Invalid deposit amount");
    // Auto-deposit all transfers to DEX
    const token_contract = this.firstReceiver;

    this.verifyTokenExist(quantity.symbol, token_contract);

    const balancesTable = new TableStore<BalancesTable>(this.receiver, from);
    const symbol_code = quantity.symbol.code();
    const existing = balancesTable.get(symbol_code);

    if (existing) {
      check(existing.balance.symbol == quantity.symbol, "Symbol mismatch");

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
    check(
      pair.status == "active",
      "Trading is temporarily unavailable for this pair"
    );

    // Basic validations
    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");
    check(price.amount > 0, "Price must be positive");

    // Symbol & precision validations
    check(
      amount.symbol.code() == pair.base_symbol.code(),
      "Amount must be base asset"
    );
    check(
      price.symbol.code() == pair.quote_symbol.code(),
      "Price must be quote asset"
    );
    check(
      price.symbol.code() == pair.tick_size.symbol.code(),
      "Tick size symbol mismatch"
    );
    check(
      amount.symbol.precision() == pair.base_symbol.precision(),
      "Amount precision mismatch"
    );
    check(
      price.symbol.precision() == pair.quote_symbol.precision(),
      "Price precision mismatch"
    );

    // Order size constraints
    check(amount.amount >= pair.min_order_size.amount, "Below min order size");
    check(
      amount.amount <= pair.max_order_size.amount,
      "Exceeds max order size: " +
        amount.toString() +
        " > " +
        pair.max_order_size.toString()
    );

    // Tick size enforcement
    check(
      price.amount % pair.tick_size.amount == 0,
      "Price must be multiple of tick size"
    );

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
    check(
      pair.status == "active",
      "Trading is temporarily unavailable for this pair"
    );

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");

    // ✅ Handle buy and sell differently
    if (side == "buy") {
      // For BUY: amount is quote currency (how much to spend)
      check(
        amount.symbol.code() == pair.quote_symbol.code(),
        "Buy amount must be quote asset"
      );
      check(
        amount.symbol.precision() == pair.quote_symbol.precision(),
        "Amount precision mismatch"
      );

      // Lock quote currency
      this.lockBalanceMarket(user, side, amount, pair);

      // Execute market buy immediately
      this.executeMarketBuy(user, pair, amount.amount);
    } else {
      // For SELL: amount is base currency (how much to sell)
      check(
        amount.symbol.code() == pair.base_symbol.code(),
        "Sell amount must be base asset"
      );
      check(
        amount.symbol.precision() == pair.base_symbol.precision(),
        "Amount precision mismatch"
      );

      // Validate against pair limits
      check(
        amount.amount >= pair.min_order_size.amount,
        "Below min order size"
      );
      check(
        amount.amount <= pair.max_order_size.amount,
        "Exceeds max order size"
      );

      // Lock base currency
      this.lockBalanceMarket(user, side, amount, pair);

      // Execute market sell immediately
      this.executeMarketSell(user, pair, amount.amount);
    }
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
    check(
      pair.status == "active",
      "Trading is temporarily unavailable for this pair"
    );

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");
    check(trigger_price.amount > 0, "Trigger price must be positive");
    check(limit_price.amount > 0, "Limit price must be positive");

    // SYMBOL VALIDATIONS
    check(
      amount.symbol.code() == pair.base_symbol.code(),
      "Amount must be base asset"
    );
    check(
      amount.symbol.precision() == pair.base_symbol.precision(),
      "Amount precision mismatch"
    );
    check(
      trigger_price.symbol.code() == pair.quote_symbol.code(),
      "Trigger price must be quote asset"
    );
    check(
      trigger_price.symbol.precision() == pair.quote_symbol.precision(),
      "Trigger price precision mismatch"
    );
    check(
      limit_price.symbol.code() == pair.quote_symbol.code(),
      "Limit price must be quote asset"
    );
    check(
      limit_price.symbol.precision() == pair.quote_symbol.precision(),
      "Limit price precision mismatch"
    );

    // Order size constraints
    check(amount.amount >= pair.min_order_size.amount, "Below min order size");
    check(
      amount.amount <= pair.max_order_size.amount,
      "Exceeds max order size"
    );

    // ✅ Tick size validation for BOTH prices
    check(
      trigger_price.amount % pair.tick_size.amount == 0,
      "Trigger price must be multiple of tick size"
    );
    check(
      limit_price.amount % pair.tick_size.amount == 0,
      "Limit price must be multiple of tick size"
    );

    // ✅ Trigger price validation
    const currentPrice = this.getCurrentMarketPrice(pair_id);

    if (currentPrice.amount > 0) {
      if (side == "buy") {
        // Buy stop-loss: Trigger ABOVE current (breakout buy)
        check(
          trigger_price.amount >= currentPrice.amount,
          "Buy stop-loss trigger must be >= current price"
        );
      } else {
        // Sell stop-loss: Trigger BELOW current (stop loss sell)
        check(
          trigger_price.amount <= currentPrice.amount,
          "Sell stop-loss trigger must be <= current price"
        );
      }
    }

    // Calculate total value to lock
    const total_value = this.calculateTotalValue(limit_price, amount, pair);

    // Lock the appropriate balance
    this.lockBalance(user, side, amount, total_value, pair);

    // Create order
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

          // Skip same order and same user (self-trading prevention)
          if (
            currentOrder.order_id != currentMatch.order_id &&
            currentOrder.user != currentMatch.user
          ) {
            if (
              currentMatch.pair_id == pair_id &&
              currentMatch.order_type == "limit" &&
              (currentMatch.status == 0 || currentMatch.status == 1) &&
              currentOrder.side != currentMatch.side &&
              currentOrder.user != currentMatch.user &&
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

  @action("processltpq")
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

  /**
   * Check Pair uniqueness
   */
  private isPairExists(
    base_symbol: Symbol,
    base_contract: Name,
    quote_symbol: Symbol,
    quote_contract: Name
  ): void {
    let pair = this.pairsTable.first();

    // Check if exact pair exists (same base and quote)
    while (pair != null) {
      if (
        pair.base_symbol.code() == base_symbol.code() &&
        pair.base_contract == base_contract &&
        pair.quote_symbol == quote_symbol &&
        pair.quote_contract == quote_contract
      ) {
        check(false, "Pair already exists");
      }

      // Check if reverse pair exists
      if (
        pair.base_symbol.code() == quote_symbol.code() &&
        pair.base_contract == quote_contract &&
        pair.quote_symbol == base_symbol &&
        pair.quote_contract == base_contract
      ) {
        check(false, "Pair already exists");
      }

      pair = this.pairsTable.next(pair);
    }
  }

  /**
   * Verify Token Existence
   */
  private verifyTokenExist(symbol: Symbol, contract: Name): void {
    const symbolStr = symbol.toString().split(",")[1];

    const precision = symbol.precision();

    const symbolCode = this.calculateSymbolCode(symbolStr);

    const scope = Name.fromU64(symbolCode);

    const statTable = new TableStore<TokenStatTable>(contract, scope);

    const stat = statTable.get(symbolCode);

    check(
      stat != null,
      `TOKEN ${symbolStr} NOT FOUND IN ${contract.toString()}`
    );

    check(
      stat!.supply.symbol.precision() == precision,
      `WRONG PRECISION FOR ${symbolStr}`
    );
  }

  /**
   * Calculate Symbol Code from Symbol String
   */
  private calculateSymbolCode(symbolStr: string): u64 {
    let value: u64 = 0;

    for (let i = 0; i < symbolStr.length && i < 7; i++) {
      const char = symbolStr.charCodeAt(i);
      check(char >= 65 && char <= 90, "INVALID_SYMBOL_CHARACTER");
      value |= u64(char) << (8 * i);
    }

    return value;
  }

  /**
   * Estimate Market Price
   */
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

  /**
   * Calculate Total Value
   */
  private calculateTotalValue(
    price: Asset,
    amount: Asset,
    pair: PairsTable
  ): Asset {
    check(price.amount > 0, "Price must be positive for calculation");
    check(amount.amount > 0, "Amount must be positive for calculation");

    const base_precision = pair.base_symbol.precision();
    const value_amount =
      (price.amount * amount.amount) / u64(Math.pow(10, base_precision));
    return new Asset(value_amount, pair.quote_symbol);
  }

  /**
   * Execute market buy order immediately
   */
  private executeMarketBuy(
    user: Name,
    pair: PairsTable,
    quoteToSpend: i64
  ): void {
    let remainingQuote = quoteToSpend;

    let order = this.ordersTable.first();

    while (order != null && remainingQuote > 0) {
      const currentOrder = order;

      // Match against sell limit orders only
      if (
        currentOrder.pair_id == pair.pair_id &&
        currentOrder.side == "sell" &&
        currentOrder.order_type == "limit" &&
        (currentOrder.status == 0 || currentOrder.status == 1) &&
        currentOrder.user != user
      ) {
        // Calculate how much we can buy from this order
        const orderTotalValue = this.calculateTotalValue(
          currentOrder.price,
          currentOrder.remaining_amount,
          pair
        );

        let tradeQuoteAmount: i64;
        let tradeBaseAmount: i64;

        if (orderTotalValue.amount <= remainingQuote) {
          // Can fill entire sell order
          tradeBaseAmount = currentOrder.remaining_amount.amount;
          tradeQuoteAmount = orderTotalValue.amount;
        } else {
          // Partial fill - use all remaining quote
          tradeQuoteAmount = remainingQuote;

          // Calculate base amount: (quote * base_precision) / price
          const base_precision = pair.base_symbol.precision();
          tradeBaseAmount =
            (tradeQuoteAmount * u64(Math.pow(10, base_precision))) /
            currentOrder.price.amount;
        }

        const tradeBase = new Asset(tradeBaseAmount, pair.base_symbol);
        const tradeQuote = new Asset(tradeQuoteAmount, pair.quote_symbol);

        // Execute the trade
        this.executeMarketTrade(
          user,
          currentOrder.user,
          currentOrder,
          currentOrder.price,
          tradeBase,
          tradeQuote,
          pair,
          "buy"
        );

        remainingQuote -= tradeQuoteAmount;
      }

      order = this.ordersTable.next(currentOrder);
    }

    // Unlock any remaining quote currency
    if (remainingQuote > 0) {
      const refund = new Asset(remainingQuote, pair.quote_symbol);
      const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Balance error"
      );

      balance.locked = Asset.sub(balance.locked, refund);
      balance.balance = Asset.add(balance.balance, refund);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    }

    check(
      quoteToSpend - remainingQuote > 0,
      "No liquidity available for market buy"
    );
  }

  /**
   * Execute market sell order immediately
   */
  private executeMarketSell(
    user: Name,
    pair: PairsTable,
    baseToSell: i64
  ): void {
    let remainingBase = baseToSell;

    let order = this.ordersTable.first();

    while (order != null && remainingBase > 0) {
      const currentOrder = order;

      // Match against buy limit orders only
      if (
        currentOrder.pair_id == pair.pair_id &&
        currentOrder.side == "buy" &&
        currentOrder.order_type == "limit" &&
        (currentOrder.status == 0 || currentOrder.status == 1) &&
        currentOrder.user != user
      ) {
        let tradeBaseAmount: i64;

        if (currentOrder.remaining_amount.amount <= remainingBase) {
          // Can fill entire buy order
          tradeBaseAmount = currentOrder.remaining_amount.amount;
        } else {
          // Partial fill
          tradeBaseAmount = remainingBase;
        }

        const tradeBase = new Asset(tradeBaseAmount, pair.base_symbol);

        const tradeQuote = this.calculateTotalValue(
          currentOrder.price,
          tradeBase,
          pair
        );

        // Execute the trade
        this.executeMarketTrade(
          currentOrder.user,
          user,
          currentOrder,
          currentOrder.price,
          tradeBase,
          tradeQuote,
          pair,
          "sell"
        );

        remainingBase -= tradeBaseAmount;
      }

      order = this.ordersTable.next(currentOrder);
    }

    // Unlock any remaining base currency
    if (remainingBase > 0) {
      const refund = new Asset(remainingBase, pair.base_symbol);
      const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Balance error"
      );

      balance.locked = Asset.sub(balance.locked, refund);
      balance.balance = Asset.add(balance.balance, refund);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    }

    check(
      baseToSell - remainingBase > 0,
      "No liquidity available for market sell"
    );
  }

  /**
   * Lock Asset
   */
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

  /**
   * Market order balance locking
   */
  private lockBalanceMarket(
    user: Name,
    side: string,
    lockAmount: Asset,
    pair: PairsTable
  ): void {
    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

    if (side == "buy") {
      // Lock quote currency
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Insufficient quote token"
      );
      check(balance.balance.amount >= lockAmount.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, lockAmount);
      balance.locked = Asset.add(balance.locked, lockAmount);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    } else {
      // Lock base currency
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Insufficient base token"
      );
      check(balance.balance.amount >= lockAmount.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, lockAmount);
      balance.locked = Asset.add(balance.locked, lockAmount);
      balance.updated_at = new TimePointSec();

      balancesTable.update(balance, this.receiver);
    }
  }

  /**
   * Unlock balance
   */
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

  /**
   * Maching Engine
   */
  private canMatch(order1: OrdersTable, order2: OrdersTable): bool {
    if (order1.side == "buy") {
      return order1.price.amount >= order2.price.amount;
    } else {
      return order1.price.amount <= order2.price.amount;
    }
  }

  /**
   * Stop Loss Order Match
   */
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

  /**
   * Find Current Market Price
   */
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

  /**
   * Calculate Trade Amount
   */
  private calculateTradeAmount(
    order1: OrdersTable,
    order2: OrdersTable
  ): Asset {
    const amount1 = order1.remaining_amount.amount;
    const amount2 = order2.remaining_amount.amount;
    const minAmount = amount1 < amount2 ? amount1 : amount2;
    return new Asset(minAmount, order1.amount.symbol);
  }

  /**
   * Trade Execution
   */
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

  /**
   * Execute a single market trade
   */
  private executeMarketTrade(
    buyer: Name,
    seller: Name,
    limitorder: OrdersTable,
    price: Asset,
    tradeBase: Asset,
    tradeQuote: Asset,
    pair: PairsTable,
    marketSide: string
  ): void {
    // Calculate fees
    const takerFeeAmount = (tradeQuote.amount * u64(pair.taker_fee_bp)) / 10000;
    const takerFee = new Asset(takerFeeAmount, pair.quote_symbol);

    const makerFeeAmount = (tradeBase.amount * u64(pair.maker_fee_bp)) / 10000;
    const makerFee = new Asset(makerFeeAmount, pair.base_symbol);

    // Update balances
    const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
    const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);

    // Buyer receives base currency
    const buyerBase = buyerBalances.get(pair.base_symbol.code());
    if (buyerBase) {
      buyerBase.balance = Asset.add(buyerBase.balance, tradeBase);
      buyerBase.updated_at = new TimePointSec();
      buyerBalances.update(buyerBase, this.receiver);
    } else {
      const balance = new BalancesTable(
        pair.base_contract,
        tradeBase,
        new Asset(0, tradeBase.symbol),
        new TimePointSec()
      );
      buyerBalances.store(balance, this.receiver);
    }

    // Buyer pays quote currency + taker fee
    const buyerQuote = buyerBalances.requireGet(
      pair.quote_symbol.code(),
      "Buyer balance error"
    );
    const buyerTotal = Asset.add(tradeQuote, takerFee);
    buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotal);
    buyerQuote.updated_at = new TimePointSec();
    buyerBalances.update(buyerQuote, this.receiver);

    // Seller pays base currency + maker fee
    const sellerBase = sellerBalances.requireGet(
      pair.base_symbol.code(),
      "Seller balance error"
    );
    const sellerTotal = Asset.add(tradeBase, makerFee);
    sellerBase.locked = Asset.sub(sellerBase.locked, sellerTotal);
    sellerBase.updated_at = new TimePointSec();
    sellerBalances.update(sellerBase, this.receiver);

    // Seller receives quote currency
    const sellerQuote = sellerBalances.get(pair.quote_symbol.code());
    if (sellerQuote) {
      sellerQuote.balance = Asset.add(sellerQuote.balance, tradeQuote);
      sellerQuote.updated_at = new TimePointSec();
      sellerBalances.update(sellerQuote, this.receiver);
    } else {
      const balance = new BalancesTable(
        pair.quote_contract,
        tradeQuote,
        new Asset(0, tradeQuote.symbol),
        new TimePointSec()
      );
      sellerBalances.store(balance, this.receiver);
    }

    // Update the limit order that was matched
    limitorder.filled_amount = Asset.add(limitorder.filled_amount, tradeBase);
    limitorder.remaining_amount = Asset.sub(
      limitorder.remaining_amount,
      tradeBase
    );
    limitorder.status = limitorder.remaining_amount.amount == 0 ? 2 : 1;
    limitorder.updated_at = new TimePointSec();
    this.ordersTable.update(limitorder, this.receiver);

    // Record trade (market order has no order_id, so use MAX u64 for market orders that will never conflict)
    const MARKET_ORDER_ID: u64 = 18446744073709551615;
    const trade = new TradesTable(
      this.tradesTable.availablePrimaryKey,
      pair.pair_id,
      marketSide == "buy" ? MARKET_ORDER_ID : limitorder.order_id,
      marketSide == "sell" ? MARKET_ORDER_ID : limitorder.order_id,
      buyer,
      seller,
      price,
      tradeBase,
      tradeQuote,
      takerFee,
      makerFee,
      new TimePointSec()
    );

    this.tradesTable.store(trade, this.receiver);

    // Record fees
    this.recordFee(pair.pair_id, pair.quote_contract, takerFee, false);
    this.recordFee(pair.pair_id, pair.base_contract, makerFee, true);
  }

  /**
   * Update Balance after Trade
   */
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

  /**
   * Update Order after Trade
   */
  private updateOrderAfterTrade(order: OrdersTable, tradeAmount: Asset): void {
    order.filled_amount = Asset.add(order.filled_amount, tradeAmount);
    order.remaining_amount = Asset.sub(order.remaining_amount, tradeAmount);
    order.status = order.remaining_amount.amount == 0 ? 2 : 1;
    order.updated_at = new TimePointSec();

    this.ordersTable.update(order, this.receiver);
  }

  /**
   * Fee Record
   */
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

  /**
   * Composit key for secondary index query
   */
  private createCompositeKey(pair_id: u64, symbol_code: u64): U128 {
    const high = U128.fromU64(pair_id);
    const shifted = U128.shl(high, 64);
    const low = U128.fromU64(symbol_code);
    return U128.or(shifted, low);
  }

  /**
   * Transfer Asset
   */
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

class updatePairAction implements _chain.Packer {
    constructor (
        public pair_id: u64 = 0,
        public min_order_size: _chain.Asset | null = null,
        public max_order_size: _chain.Asset | null = null,
        public tick_size: _chain.Asset | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pair_id);
        enc.pack(this.min_order_size!);
        enc.pack(this.max_order_size!);
        enc.pack(this.tick_size!);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pair_id = dec.unpackNumber<u64>();
        
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
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.min_order_size!.getSize();
        size += this.max_order_size!.getSize();
        size += this.tick_size!.getSize();
        return size;
    }
}

class clearPairAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

class setPairStatusAction implements _chain.Packer {
    constructor (
        public pair_id: u64 = 0,
        public new_status: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pair_id);
        enc.packString(this.new_status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pair_id = dec.unpackNumber<u64>();
        this.new_status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += _chain.Utils.calcPackedStringLength(this.new_status);
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
		if (action == 0xD5526CAAA675C000) {//updatepair
            const args = new updatePairAction();
            args.unpack(actionData);
            mycontract.updatePair(args.pair_id,args.min_order_size!,args.max_order_size!,args.tick_size!);
        }
		if (action == 0x446F533AE0000000) {//clrpair
            const args = new clearPairAction();
            args.unpack(actionData);
            mycontract.clearPair();
        }
		if (action == 0xC2B38C9B3AC00000) {//setstatus
            const args = new setPairStatusAction();
            args.unpack(actionData);
            mycontract.setPairStatus(args.pair_id,args.new_status);
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
		if (action == 0xADE8856311CD6C00) {//processltpq
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
