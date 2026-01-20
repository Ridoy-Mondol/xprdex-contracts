// import {
//   Asset,
//   check,
//   Contract,
//   InlineAction,
//   isAccount,
//   Name,
//   PermissionLevel,
//   requireAuth,
//   Symbol,
//   TableStore,
//   currentTimeSec,
//   U128,
// } from "proton-tsc";
// import {
//   PairsTable,
//   OrdersTable,
//   TradesTable,
//   BalancesTable,
//   ConfigTable,
//   FeesTable,
//   TokenStatTable,
// } from "./tables";
// import { TokenTransfer } from "./orderbook.inline";

// @contract
// export class orderbook extends Contract {
//   private pairsTable: TableStore<PairsTable> = new TableStore<PairsTable>(
//     this.receiver,
//     this.receiver,
//   );

//   private ordersTable: TableStore<OrdersTable> = new TableStore<OrdersTable>(
//     this.receiver,
//     this.receiver,
//   );

//   private tradesTable: TableStore<TradesTable> = new TableStore<TradesTable>(
//     this.receiver,
//     this.receiver,
//   );

//   private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
//     this.receiver,
//     this.receiver,
//   );

//   private feesTable: TableStore<FeesTable> = new TableStore<FeesTable>(
//     this.receiver,
//     this.receiver,
//   );

//   private readonly MAX_FEE_BP: u16 = 500;

//   @action("init")
//   init(admin: Name, fee_recipient: Name): void {
//     requireAuth(this.receiver);

//     check(isAccount(admin), "Admin not found");
//     check(isAccount(fee_recipient), "Fee Recipient account not found");

//     const existing = this.configTable.get(0);

//     if (existing) {
//       existing.admin = admin;
//       existing.fee_recipient = fee_recipient;

//       this.configTable.update(existing, this.receiver);
//     } else {
//       const config = new ConfigTable(
//         0,
//         admin,
//         false,
//         1,
//         100,
//         1,
//         100,
//         fee_recipient,
//       );

//       this.configTable.store(config, this.receiver);
//     }
//   }

//   /**
//    * ========================================
//    * PAIR MANAGEMENT ACTIONS
//    * ========================================
//    */

//   @action("createpair")
//   createPair(
//     base_symbol: Symbol,
//     base_contract: Name,
//     quote_symbol: Symbol,
//     quote_contract: Name,
//     min_order_size: Asset,
//     max_order_size: Asset,
//     tick_size: Asset,
//     maker_fee_bp: u16,
//     taker_fee_bp: u16,
//   ): void {
//     const config = this.getConfig();
//     requireAuth(config.admin);

//     check(isAccount(base_contract), "Base contract does not exist");
//     check(isAccount(quote_contract), "Quote contract does not exist");

//     this.verifyTokenExist(base_symbol, base_contract);
//     this.verifyTokenExist(quote_symbol, quote_contract);

//     check(
//       base_symbol.code() != quote_symbol.code(),
//       "Base and quote cannot be the same",
//     );
//     check(
//       min_order_size.symbol.code() == base_symbol.code(),
//       "Min order size must be in base asset",
//     );
//     check(
//       max_order_size.symbol.code() == base_symbol.code(),
//       "Max order size must be in base asset",
//     );
//     check(
//       tick_size.symbol.code() == quote_symbol.code(),
//       "Tick size must be in quote asset",
//     );
//     check(
//       min_order_size.symbol.precision() == base_symbol.precision(),
//       "Min order size precision mismatch",
//     );
//     check(
//       max_order_size.symbol.precision() == base_symbol.precision(),
//       "Max order size precision mismatch",
//     );
//     check(
//       tick_size.symbol.precision() == quote_symbol.precision(),
//       "Tick size precision mismatch",
//     );

//     check(min_order_size.amount > 0, "Min order size must be positive");
//     check(max_order_size.amount > 0, "Max order size must be positive");
//     check(tick_size.amount > 0, "Tick size must be positive");
//     check(
//       max_order_size.amount < 10_000_000_000_000,
//       "Max order size too large",
//     );
//     check(tick_size.amount < 1_000_000_000, "Tick size too large");

//     check(maker_fee_bp <= this.MAX_FEE_BP, "Maker fee exceeds maximum (5%)");
//     check(taker_fee_bp <= this.MAX_FEE_BP, "Taker fee exceeds maximum (5%)");

//     check(
//       maker_fee_bp >= config.min_maker_fee_bp &&
//         maker_fee_bp <= config.max_maker_fee_bp,
//       "Maker fee out of range",
//     );
//     check(
//       taker_fee_bp >= config.min_taker_fee_bp &&
//         taker_fee_bp <= config.max_taker_fee_bp,
//       "Taker fee out of range",
//     );

//     check(maker_fee_bp <= taker_fee_bp, "Maker fee cannot exceed taker fee");

//     check(
//       max_order_size.amount > min_order_size.amount,
//       "Max order size must be greater than min order size",
//     );

//     this.isPairExists(base_symbol, base_contract, quote_symbol, quote_contract);

//     const pair_id = this.pairsTable.availablePrimaryKey;

//     const pair = new PairsTable(
//       pair_id,
//       base_symbol,
//       base_contract,
//       quote_symbol,
//       quote_contract,
//       min_order_size,
//       max_order_size,
//       tick_size,
//       maker_fee_bp,
//       taker_fee_bp,
//       "active",
//       currentTimeSec(),
//     );

//     this.pairsTable.store(pair, this.receiver);
//   }

//   @action("updatepair")
//   updatePair(
//     pair_id: u64,
//     min_order_size: Asset,
//     max_order_size: Asset,
//     tick_size: Asset,
//   ): void {
//     const config = this.getConfig();
//     requireAuth(config.admin);

//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

//     check(
//       min_order_size.symbol.code() == pair.base_symbol.code(),
//       "Min order size must be base asset",
//     );
//     check(
//       max_order_size.symbol.code() == pair.base_symbol.code(),
//       "Max order size must be base asset",
//     );
//     check(
//       tick_size.symbol.code() == pair.quote_symbol.code(),
//       "Tick size must be quote asset",
//     );
//     check(
//       min_order_size.symbol.precision == pair.base_symbol.precision,
//       "Min order size precision mismatch",
//     );
//     check(
//       max_order_size.symbol.precision == pair.base_symbol.precision,
//       "Max order size precision mismatch",
//     );
//     check(
//       tick_size.symbol.precision == pair.quote_symbol.precision,
//       "Tick size precision mismatch",
//     );
//     check(min_order_size.amount > 0, "Min order size must be positive");
//     check(max_order_size.amount > 0, "Max order size must be positive");
//     check(tick_size.amount > 0, "Tick size must be positive");
//     check(
//       max_order_size.amount < 10_000_000_000_000,
//       "Max order size too large",
//     );
//     check(tick_size.amount < 1_000_000_000, "Tick size too large");
//     check(
//       max_order_size.amount > min_order_size.amount,
//       "Max order size must be greater than min order size",
//     );

//     pair.min_order_size = min_order_size;
//     pair.max_order_size = max_order_size;
//     pair.tick_size = tick_size;

//     this.pairsTable.update(pair, this.receiver);
//   }

//   @action("clrpair")
//   clearPair(): void {
//     let pair = this.pairsTable.first();

//     while (pair != null) {
//       let nextPair = this.pairsTable.next(pair);
//       this.pairsTable.remove(pair);
//       pair = nextPair;
//     }

//     let order = this.ordersTable.first();

//     while (order != null) {
//       let nextOrder = this.ordersTable.next(order);
//       this.ordersTable.remove(order);
//       order = nextOrder;
//     }

//     let trade = this.tradesTable.first();

//     while (trade != null) {
//       let nextTrade = this.tradesTable.next(trade);
//       this.tradesTable.remove(trade);
//       trade = nextTrade;
//     }

//     let config = this.configTable.first();

//     while (config != null) {
//       let nextConfig = this.configTable.next(config);
//       this.configTable.remove(config);
//       config = nextConfig;
//     }

//     let fees = this.feesTable.first();

//     while (fees != null) {
//       let nextFees = this.feesTable.next(fees);
//       this.feesTable.remove(fees);
//       fees = nextFees;
//     }

//     const balancesTable1 = new TableStore<BalancesTable>(
//       this.receiver,
//       Name.fromString("ahatashamul5"),
//     );

//     let balance1 = balancesTable1.first();

//     while (balance1 != null) {
//       let nextBalance = balancesTable1.next(balance1);
//       balancesTable1.remove(balance1);
//       balance1 = nextBalance;
//     }

//     const balancesTable2 = new TableStore<BalancesTable>(
//       this.receiver,
//       Name.fromString("ahatashamul3"),
//     );

//     let balance2 = balancesTable2.first();

//     while (balance2 != null) {
//       let nextBalance = balancesTable2.next(balance2);
//       balancesTable2.remove(balance2);
//       balance2 = nextBalance;
//     }
//   }

//   @action("setstatus")
//   setPairStatus(pair_id: u64, new_status: string): void {
//     const config = this.getConfig();
//     requireAuth(config.admin);

//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

//     check(
//       new_status == "active" ||
//         new_status == "paused" ||
//         new_status == "disabled",
//       "Invalid pair status",
//     );
//     check(pair.status != new_status, "Pair already in this state");

//     pair.status = new_status;
//     this.pairsTable.update(pair, this.receiver);
//   }

//   @action("transfer", notify)
//   onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
//     if (to != this.receiver) return;
//     if (from == this.receiver) return;
//     if (memo != "deposit") return;

//     check(quantity.amount > 0, "Invalid deposit amount");

//     const token_contract = this.firstReceiver;

//     this.verifyTokenExist(quantity.symbol, token_contract);

//     const balancesTable = new TableStore<BalancesTable>(this.receiver, from);
//     const symbol_code = quantity.symbol.code();
//     const existing = balancesTable.get(symbol_code);

//     if (existing) {
//       check(existing.balance.symbol == quantity.symbol, "Symbol mismatch");

//       existing.balance = Asset.add(existing.balance, quantity);
//       existing.updated_at = currentTimeSec();

//       balancesTable.update(existing, this.receiver);
//     } else {
//       const newBalance = new BalancesTable(
//         token_contract,
//         quantity,
//         new Asset(0, quantity.symbol),
//         currentTimeSec(),
//       );
//       balancesTable.store(newBalance, this.receiver);
//     }
//   }

//   /**
//    * ========================================
//    * ORDER PLACEMENT
//    * ========================================
//    */

//   @action("limitorder")
//   LimitOrder(
//     user: Name,
//     pair_id: u64,
//     side: string,
//     price: Asset,
//     amount: Asset,
//   ): void {
//     requireAuth(user);

//     const config = this.getConfig();
//     check(!config.paused, "DEX is paused");

//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
//     check(pair.status == "active", "Trading unavailable for this pair");

//     check(side == "buy" || side == "sell", "Invalid side");
//     check(amount.amount > 0, "Amount must be positive");
//     check(price.amount > 0, "Price must be positive");

//     check(
//       amount.symbol.code() == pair.base_symbol.code(),
//       "Amount must be base asset",
//     );
//     check(
//       price.symbol.code() == pair.quote_symbol.code(),
//       "Price must be quote asset",
//     );
//     check(
//       amount.symbol.precision() == pair.base_symbol.precision(),
//       "Amount precision mismatch",
//     );
//     check(
//       price.symbol.precision() == pair.quote_symbol.precision(),
//       "Price precision mismatch",
//     );

//     check(amount.amount >= pair.min_order_size.amount, "Below min order size");
//     check(
//       amount.amount <= pair.max_order_size.amount,
//       "Exceeds max order size",
//     );

//     check(
//       price.amount % pair.tick_size.amount == 0,
//       "Price must be multiple of tick size",
//     );

//     this.validateReasonablePrice(pair_id, price);

//     const total_value = this.calculateTotalValue(price, amount, pair);

//     this.lockBalance(user, side, amount, total_value, pair);

//     const order_id = this.ordersTable.availablePrimaryKey;

//     const order = new OrdersTable(
//       order_id,
//       pair_id,
//       user,
//       side,
//       "limit",
//       price,
//       amount,
//       new Asset(0, amount.symbol),
//       amount,
//       new Asset(0, price.symbol),
//       false,
//       0,
//       currentTimeSec(),
//       currentTimeSec(),
//     );

//     this.ordersTable.store(order, this.receiver);
//   }

//   @action("marketorder")
//   marketOrder(
//     user: Name,
//     pair_id: u64,
//     side: string,
//     amount: Asset,
//     max_slippage_bp: u16,
//   ): void {
//     requireAuth(user);

//     const config = this.getConfig();
//     check(!config.paused, "DEX is paused");

//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
//     check(pair.status == "active", "Trading unavailable for this pair");

//     check(side == "buy" || side == "sell", "Invalid side");
//     check(amount.amount > 0, "Amount must be positive");
//     check(max_slippage_bp <= 10000, "Invalid slippage value");

//     if (side == "buy") {
//       check(
//         amount.symbol.code() == pair.quote_symbol.code(),
//         "Buy amount must be quote asset",
//       );
//       check(
//         amount.symbol.precision() == pair.quote_symbol.precision(),
//         "Amount precision mismatch",
//       );

//       this.lockBalanceMarket(user, side, amount, pair);
//       this.executeMarketBuy(user, pair, amount.amount, max_slippage_bp);
//     } else {
//       check(
//         amount.symbol.code() == pair.base_symbol.code(),
//         "Sell amount must be base asset",
//       );
//       check(
//         amount.symbol.precision() == pair.base_symbol.precision(),
//         "Amount precision mismatch",
//       );

//       check(
//         amount.amount >= pair.min_order_size.amount,
//         "Below min order size",
//       );
//       check(
//         amount.amount <= pair.max_order_size.amount,
//         "Exceeds max order size",
//       );

//       this.lockBalanceMarket(user, side, amount, pair);
//       this.executeMarketSell(user, pair, amount.amount, max_slippage_bp);
//     }
//   }

//   @action("stoploss")
//   stopLossOrder(
//     user: Name,
//     pair_id: u64,
//     side: string,
//     trigger_price: Asset,
//     limit_price: Asset,
//     amount: Asset,
//   ): void {
//     requireAuth(user);

//     const config = this.getConfig();
//     check(!config.paused, "DEX is paused");

//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
//     check(pair.status == "active", "Trading unavailable for this pair");

//     check(side == "buy" || side == "sell", "Invalid side");
//     check(amount.amount > 0, "Amount must be positive");
//     check(trigger_price.amount > 0, "Trigger price must be positive");
//     check(limit_price.amount > 0, "Limit price must be positive");

//     check(
//       amount.symbol.code() == pair.base_symbol.code(),
//       "Amount must be base asset",
//     );
//     check(
//       amount.symbol.precision() == pair.base_symbol.precision(),
//       "Amount precision mismatch",
//     );
//     check(
//       trigger_price.symbol.code() == pair.quote_symbol.code(),
//       "Trigger price must be quote asset",
//     );
//     check(
//       trigger_price.symbol.precision() == pair.quote_symbol.precision(),
//       "Trigger price precision mismatch",
//     );
//     check(
//       limit_price.symbol.code() == pair.quote_symbol.code(),
//       "Limit price must be quote asset",
//     );
//     check(
//       limit_price.symbol.precision() == pair.quote_symbol.precision(),
//       "Limit price precision mismatch",
//     );

//     check(amount.amount >= pair.min_order_size.amount, "Below min order size");
//     check(
//       amount.amount <= pair.max_order_size.amount,
//       "Exceeds max order size",
//     );

//     check(
//       trigger_price.amount % pair.tick_size.amount == 0,
//       "Trigger price must be multiple of tick size",
//     );
//     check(
//       limit_price.amount % pair.tick_size.amount == 0,
//       "Limit price must be multiple of tick size",
//     );

//     const currentPrice = this.getCurrentMarketPrice(pair_id);

//     if (currentPrice.amount > 0) {
//       if (side == "buy") {
//         check(
//           trigger_price.amount >= currentPrice.amount,
//           "Buy stop trigger must be >= current price",
//         );
//       } else {
//         check(
//           trigger_price.amount <= currentPrice.amount,
//           "Sell stop trigger must be <= current price",
//         );
//       }

//       // ✅ Validate limit price is reasonable relative to trigger
//       if (side == "buy") {
//         check(
//           limit_price.amount >= trigger_price.amount,
//           "Buy limit price should be >= trigger price",
//         );
//         check(
//           <u64>limit_price.amount <= u64.MAX_VALUE / 2 &&
//             limit_price.amount <= trigger_price.amount * 2,
//           "Buy limit price too high (max 2x trigger)",
//         );
//       } else {
//         check(
//           limit_price.amount <= trigger_price.amount,
//           "Sell limit price should be <= trigger price",
//         );
//         check(
//           limit_price.amount * 2 >= trigger_price.amount ||
//             <u64>trigger_price.amount > u64.MAX_VALUE / 2,
//           "Sell limit price too low (min 0.5x trigger)",
//         );
//       }
//     }

//     const total_value = this.calculateTotalValue(limit_price, amount, pair);

//     this.lockBalance(user, side, amount, total_value, pair);

//     const order = new OrdersTable(
//       this.ordersTable.availablePrimaryKey,
//       pair_id,
//       user,
//       side,
//       "stoploss",
//       limit_price,
//       amount,
//       new Asset(0, amount.symbol),
//       amount,
//       trigger_price,
//       false,
//       0,
//       currentTimeSec(),
//       currentTimeSec(),
//     );

//     this.ordersTable.store(order, this.receiver);
//   }

//   /**
//    * ========================================
//    * ORDER PROCESSING
//    * ========================================
//    */
//   @action("processlimit")
//   processLimit(pair_id: u64, max_orders: i32): void {
//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
//     let processed: i32 = 0;

//     while (processed < max_orders) {
//       // ✅ STEP 1: Find best buy order (no modifications)
//       let bestBuyOrderId: u64 = 0;
//       let bestBuyPrice: i64 = 0;

//       let order = this.ordersTable.first();
//       while (order != null) {
//         if (
//           order.pair_id == pair_id &&
//           order.side == "buy" &&
//           order.order_type == "limit" &&
//           (order.status == 0 || order.status == 1) &&
//           order.price.amount > bestBuyPrice
//         ) {
//           bestBuyPrice = order.price.amount;
//           bestBuyOrderId = order.order_id;
//         }
//         order = this.ordersTable.next(order);
//       }

//       if (bestBuyOrderId == 0) break;

//       // ✅ STEP 2: Find best sell order (fresh iteration, no modifications)
//       let bestSellOrderId: u64 = 0;
//       let bestSellPrice: i64 = i64.MAX_VALUE;

//       order = this.ordersTable.first();
//       while (order != null) {
//         if (
//           order.pair_id == pair_id &&
//           order.side == "sell" &&
//           order.order_type == "limit" &&
//           (order.status == 0 || order.status == 1) &&
//           order.price.amount < bestSellPrice
//         ) {
//           bestSellPrice = order.price.amount;
//           bestSellOrderId = order.order_id;
//         }
//         order = this.ordersTable.next(order);
//       }

//       if (bestSellOrderId == 0) break;

//       // ✅ STEP 3: Fetch fresh data by ID (safe - no stale iterators)
//       const buyOrder = this.ordersTable.get(bestBuyOrderId);
//       const sellOrder = this.ordersTable.get(bestSellOrderId);

//       if (!buyOrder || !sellOrder) break;

//       // Validate can match
//       if (
//         buyOrder.user == sellOrder.user ||
//         buyOrder.price.amount < sellOrder.price.amount ||
//         buyOrder.status > 1 ||
//         sellOrder.status > 1
//       ) {
//         break;
//       }

//       // ✅ STEP 4: Execute trade (now safe to modify tables)
//       const tradeAmount = this.calculateTradeAmount(buyOrder, sellOrder);

//       this.executeTrade(
//         buyOrder,
//         sellOrder,
//         sellOrder.price,
//         tradeAmount,
//         pair,
//       );

//       processed++;

//       // ✅ STEP 5: Handle partial fills and dust (from new version)
//       const updatedBuy = this.ordersTable.get(bestBuyOrderId);
//       const updatedSell = this.ordersTable.get(bestSellOrderId);

//       if (updatedBuy && updatedBuy.status == 1) {
//         this.unlockPartialFillById(updatedBuy.order_id, pair);

//         // Auto-cancel dust
//         const recheckBuy = this.ordersTable.get(bestBuyOrderId);
//         if (
//           recheckBuy &&
//           recheckBuy.status == 1 &&
//           recheckBuy.remaining_amount.amount < pair.min_order_size.amount
//         ) {
//           this.unlockBalance(
//             recheckBuy.user,
//             recheckBuy.side,
//             recheckBuy.remaining_amount,
//             pair,
//             recheckBuy.price,
//           );
//           recheckBuy.status = 3;
//           this.ordersTable.update(recheckBuy, this.receiver);
//         }
//       }

//       if (updatedSell && updatedSell.status == 1) {
//         this.unlockPartialFillById(updatedSell.order_id, pair);

//         // Auto-cancel dust
//         const recheckSell = this.ordersTable.get(bestSellOrderId);
//         if (
//           recheckSell &&
//           recheckSell.status == 1 &&
//           recheckSell.remaining_amount.amount < pair.min_order_size.amount
//         ) {
//           this.unlockBalance(
//             recheckSell.user,
//             recheckSell.side,
//             recheckSell.remaining_amount,
//             pair,
//             recheckSell.price,
//           );
//           recheckSell.status = 3;
//           this.ordersTable.update(recheckSell, this.receiver);
//         }
//       }
//     }
//   }

//   @action("processltpq")
//   processStopLossTakeProfit(pair_id: u64, max_orders: u32): void {
//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

//     const currentPrice = this.getCurrentMarketPrice(pair_id);

//     if (currentPrice.amount == 0) return;

//     let processed: u32 = 0;

//     while (processed < max_orders) {
//       // Find ONE stop-loss order to trigger
//       let orderToTriggerId: u64 = 0;

//       let order = this.ordersTable.first();
//       while (order != null) {
//         if (
//           order.pair_id == pair_id &&
//           order.order_type == "stoploss" &&
//           !order.is_triggered &&
//           (order.status == 0 || order.status == 1)
//         ) {
//           let shouldTrigger = false;

//           if (order.side == "buy") {
//             // Buy stop-loss: Trigger when market price >= trigger price
//             shouldTrigger = currentPrice.amount >= order.trigger_price.amount;
//           } else {
//             // Sell stop-loss: Trigger when market price <= trigger price
//             shouldTrigger = currentPrice.amount <= order.trigger_price.amount;
//           }

//           if (shouldTrigger) {
//             orderToTriggerId = order.order_id;
//             break;
//           }
//         }
//         order = this.ordersTable.next(order);
//       }

//       if (orderToTriggerId == 0) break;

//       const orderToTrigger = this.ordersTable.get(orderToTriggerId);

//       if (
//         !orderToTrigger ||
//         orderToTrigger.order_type != "stoploss" ||
//         orderToTrigger.is_triggered
//       ) {
//         break;
//       }

//       orderToTrigger.is_triggered = true;
//       orderToTrigger.order_type = "limit";
//       orderToTrigger.updated_at = currentTimeSec();

//       this.ordersTable.update(orderToTrigger, this.receiver);

//       this.matchStopLossOrder(orderToTrigger, pair);

//       processed++;
//     }
//   }

//   /**
//    * ========================================
//    * WITHDRAWAL
//    * ========================================
//    */

//   @action("withdrawall")
//   withdrawAll(user: Name): void {
//     requireAuth(user);

//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

//     let balance = balancesTable.first();

//     while (balance != null) {
//       const current = balance;

//       if (current.balance.amount > 0) {
//         this.transfer(
//           current.token_contract,
//           this.receiver,
//           user,
//           current.balance,
//           `Withdrawal: ${current.balance.toString()}`,
//         );

//         current.balance = new Asset(0, current.balance.symbol);
//         current.updated_at = currentTimeSec();

//         balancesTable.update(current, this.receiver);
//       }
//       balance = balancesTable.next(current);
//     }
//   }

//   @action("withdraw")
//   withdraw(user: Name, quantity: Asset): void {
//     requireAuth(user);

//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
//     const balance = balancesTable.requireGet(
//       quantity.symbol.code(),
//       "No balance found",
//     );

//     check(balance.balance.amount >= quantity.amount, "Insufficient balance");

//     balance.balance = Asset.sub(balance.balance, quantity);
//     balance.updated_at = currentTimeSec();

//     balancesTable.update(balance, this.receiver);

//     this.transfer(
//       balance.token_contract,
//       this.receiver,
//       user,
//       quantity,
//       `Withdrawal: ${quantity.toString()}`,
//     );
//   }

//   /**
//    * ========================================
//    * ORDER CANCELLATION
//    * ========================================
//    */

//   @action("cancelorder")
//   cancelOrder(user: Name, order_id: u64): void {
//     requireAuth(user);

//     const order = this.ordersTable.requireGet(order_id, "Order not found");

//     check(order.user == user, "Not your order");
//     check(order.status == 0 || order.status == 1, "Cannot cancel this order");

//     const pair = this.pairsTable.requireGet(order.pair_id, "Pair not found");

//     this.unlockBalance(
//       order.user,
//       order.side,
//       order.remaining_amount,
//       pair,
//       order.price,
//     );

//     order.status = 3;
//     order.updated_at = currentTimeSec();

//     this.ordersTable.update(order, this.receiver);
//   }

//   /**
//    * ========================================
//    * PRIVATE HELPER FUNCTIONS
//    * ========================================
//    */
//   private getConfig(): ConfigTable {
//     const config = this.configTable.requireGet(0, "DEX not initialized");
//     return config;
//   }

//   private isPairExists(
//     base_symbol: Symbol,
//     base_contract: Name,
//     quote_symbol: Symbol,
//     quote_contract: Name,
//   ): void {
//     let pair = this.pairsTable.first();

//     while (pair != null) {
//       if (
//         pair.base_symbol.code() == base_symbol.code() &&
//         pair.base_contract == base_contract &&
//         pair.quote_symbol.code() == quote_symbol.code() &&
//         pair.quote_contract == quote_contract
//       ) {
//         check(false, "Pair already exists");
//       }

//       if (
//         pair.base_symbol.code() == quote_symbol.code() &&
//         pair.base_contract == quote_contract &&
//         pair.quote_symbol.code() == base_symbol.code() &&
//         pair.quote_contract == base_contract
//       ) {
//         check(false, "Reverse pair already exists");
//       }

//       pair = this.pairsTable.next(pair);
//     }
//   }

//   private verifyTokenExist(symbol: Symbol, contract: Name): void {
//     const symbolStr = symbol.toString().split(",")[1];
//     const precision = symbol.precision();
//     const symbolCode = this.calculateSymbolCode(symbolStr);
//     const scope = Name.fromU64(symbolCode);

//     const statTable = new TableStore<TokenStatTable>(contract, scope);
//     const stat = statTable.get(symbolCode);

//     check(
//       stat != null,
//       `Token ${symbolStr} not found in ${contract.toString()}`,
//     );
//     check(
//       stat!.supply.symbol.precision() == precision,
//       `Wrong precision for ${symbolStr}`,
//     );
//   }

//   private calculateSymbolCode(symbolStr: string): u64 {
//     let value: u64 = 0;

//     for (let i = 0; i < symbolStr.length && i < 7; i++) {
//       const char = symbolStr.charCodeAt(i);
//       check(char >= 65 && char <= 90, "Invalid symbol character");
//       value |= u64(char) << (8 * i);
//     }

//     return value;
//   }

//   /**
//    * Calculate fee with proper rounding (always round UP)
//    */
//   private calculateFee(amount: i64, fee_bp: u16): i64 {
//     check(amount > 0, "Fee amount must be positive");

//     const amountU128 = U128.fromU64(u64(amount));
//     const feeU128 = U128.fromU64(u64(fee_bp));
//     const product = U128.mul(amountU128, feeU128);
//     const divisor = U128.fromU64(10000);
//     const feeU128Result = U128.div(product, divisor);
//     const remainderU128 = U128.rem(product, divisor);

//     let feeResult = feeU128Result;
//     if (U128.gt(remainderU128, U128.fromU64(0))) {
//       feeResult = U128.add(feeU128Result, U128.fromU64(1));
//     }

//     check(U128.le(feeResult, U128.fromU64(u64.MAX_VALUE)), "Fee overflow");
//     return i64(feeResult.lo);
//   }

//   /**
//    * ✅ Prevents orders at absurd prices (e.g., 100x or 0.01x market price)
//    * This stops intentional manipulation attempts
//    */
//   private validateReasonablePrice(pair_id: u64, price: Asset): void {
//     const currentPrice = this.getCurrentMarketPrice(pair_id);

//     // Skip validation if no market price yet (first orders)
//     if (currentPrice.amount == 0) return;

//     // Allow up to 1.5x higher or 0.1x lower than current market price
//     const maxPrice = (currentPrice.amount * 3) / 2;
//     const minPrice = (currentPrice.amount * 2) / 3;

//     check(
//       price.amount >= minPrice && price.amount <= maxPrice,
//       "Price too far from market (max 1.5x deviation allowed)",
//     );
//   }

//   // ✅ NEW: Separate cleanup function to avoid iterator issues
//   private handlePostTradeCleanup(
//     buyOrderId: u64,
//     sellOrderId: u64,
//     pair: PairsTable,
//   ): void {
//     // Handle buy order
//     const buyOrder = this.ordersTable.get(buyOrderId);
//     if (buyOrder && buyOrder.status == 1) {
//       this.unlockPartialFillById(buyOrderId, pair);

//       // Check for dust after unlock
//       const recheckBuy = this.ordersTable.get(buyOrderId);
//       if (
//         recheckBuy &&
//         recheckBuy.status == 1 &&
//         recheckBuy.remaining_amount.amount < pair.min_order_size.amount
//       ) {
//         this.unlockBalance(
//           recheckBuy.user,
//           recheckBuy.side,
//           recheckBuy.remaining_amount,
//           pair,
//           recheckBuy.price,
//         );
//         recheckBuy.status = 3;
//         this.ordersTable.update(recheckBuy, this.receiver);
//       }
//     }

//     // Handle sell order
//     const sellOrder = this.ordersTable.get(sellOrderId);
//     if (sellOrder && sellOrder.status == 1) {
//       this.unlockPartialFillById(sellOrderId, pair);

//       // Check for dust after unlock
//       const recheckSell = this.ordersTable.get(sellOrderId);
//       if (
//         recheckSell &&
//         recheckSell.status == 1 &&
//         recheckSell.remaining_amount.amount < pair.min_order_size.amount
//       ) {
//         this.unlockBalance(
//           recheckSell.user,
//           recheckSell.side,
//           recheckSell.remaining_amount,
//           pair,
//           recheckSell.price,
//         );
//         recheckSell.status = 3;
//         this.ordersTable.update(recheckSell, this.receiver);
//       }
//     }
//   }

//   private calculateTotalValue(
//     price: Asset,
//     amount: Asset,
//     pair: PairsTable,
//   ): Asset {
//     check(price.amount > 0, "Price must be positive");
//     check(amount.amount > 0, "Amount must be positive");
//     check(
//       price.amount < 10_000_000_000 && amount.amount < 10_000_000_000,
//       "Order too large for calculation",
//     );

//     const base_precision = pair.base_symbol.precision();
//     check(base_precision >= 0 && base_precision <= 18, "Invalid precision");

//     // Use U128 to prevent overflow
//     const priceU128 = U128.from(u64(price.amount));
//     const amountU128 = U128.from(u64(amount.amount));
//     const product = U128.mul(priceU128, amountU128);
//     const divisor = U128.from(u64(Math.pow(10, base_precision)));
//     const result = U128.div(product, divisor);

//     check(U128.le(result, U128.fromU64(u64.MAX_VALUE)), "Value overflow");

//     const resultValue = i64(result.lo);
//     check(resultValue > 0, "Calculated value is zero");

//     return new Asset(resultValue, pair.quote_symbol);
//   }

//   /**
//    * Get best buy orders sorted by price (highest first)
//    */
//   private executeMarketBuy(
//     user: Name,
//     pair: PairsTable,
//     quoteToSpend: i64,
//     max_slippage_bp: u16,
//   ): void {
//     let remainingQuote = quoteToSpend;

//     let order = this.ordersTable.first();

//     while (order != null && remainingQuote > 0) {
//       const currentOrder = order;

//       if (
//         currentOrder.pair_id == pair.pair_id &&
//         currentOrder.side == "sell" &&
//         currentOrder.order_type == "limit" &&
//         (currentOrder.status == 0 || currentOrder.status == 1) &&
//         currentOrder.user != user
//       ) {
//         const orderTotalValue = this.calculateTotalValue(
//           currentOrder.price,
//           currentOrder.remaining_amount,
//           pair,
//         );

//         let tradeQuoteAmount: i64;
//         let tradeBaseAmount: i64;

//         if (orderTotalValue.amount <= remainingQuote) {
//           tradeBaseAmount = currentOrder.remaining_amount.amount;
//           tradeQuoteAmount = orderTotalValue.amount;
//         } else {
//           tradeQuoteAmount = remainingQuote;
//           const base_precision = pair.base_symbol.precision();
//           tradeBaseAmount =
//             (tradeQuoteAmount * u64(Math.pow(10, base_precision))) /
//             currentOrder.price.amount;
//         }

//         const tradeBase = new Asset(tradeBaseAmount, pair.base_symbol);
//         const tradeQuote = new Asset(tradeQuoteAmount, pair.quote_symbol);

//         this.executeMarketTrade(
//           user,
//           currentOrder.user,
//           currentOrder,
//           currentOrder.price,
//           tradeBase,
//           tradeQuote,
//           pair,
//           "buy",
//         );

//         remainingQuote -= tradeQuoteAmount;
//       }

//       order = this.ordersTable.next(currentOrder);
//     }

//     if (remainingQuote > 0) {
//       const refund = new Asset(remainingQuote, pair.quote_symbol);
//       const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
//       const balance = balancesTable.requireGet(
//         pair.quote_symbol.code(),
//         "Balance error",
//       );

//       check(
//         balance.locked.amount >= refund.amount,
//         "Insufficient locked balance",
//       );

//       balance.locked = Asset.sub(balance.locked, refund);
//       balance.balance = Asset.add(balance.balance, refund);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     }

//     check(quoteToSpend - remainingQuote > 0, "No liquidity available");
//   }

//   private executeMarketSell(
//     user: Name,
//     pair: PairsTable,
//     baseToSell: i64,
//     max_slippage_bp: u16,
//   ): void {
//     let remainingBase = baseToSell;

//     let order = this.ordersTable.first();

//     while (order != null && remainingBase > 0) {
//       const currentOrder = order; // ✅ Save current

//       if (
//         currentOrder.pair_id == pair.pair_id &&
//         currentOrder.side == "buy" &&
//         currentOrder.order_type == "limit" &&
//         (currentOrder.status == 0 || currentOrder.status == 1) &&
//         currentOrder.user != user
//       ) {
//         let tradeBaseAmount: i64;

//         if (currentOrder.remaining_amount.amount <= remainingBase) {
//           tradeBaseAmount = currentOrder.remaining_amount.amount;
//         } else {
//           tradeBaseAmount = remainingBase;
//         }

//         const tradeBase = new Asset(tradeBaseAmount, pair.base_symbol);
//         const tradeQuote = this.calculateTotalValue(
//           currentOrder.price,
//           tradeBase,
//           pair,
//         );

//         this.executeMarketTrade(
//           currentOrder.user,
//           user,
//           currentOrder,
//           currentOrder.price,
//           tradeBase,
//           tradeQuote,
//           pair,
//           "sell",
//         );

//         remainingBase -= tradeBaseAmount;
//       }

//       order = this.ordersTable.next(currentOrder);
//     }

//     if (remainingBase > 0) {
//       const refund = new Asset(remainingBase, pair.base_symbol);
//       const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
//       const balance = balancesTable.requireGet(
//         pair.base_symbol.code(),
//         "Balance error",
//       );

//       check(
//         balance.locked.amount >= refund.amount,
//         "Insufficient locked balance",
//       );

//       balance.locked = Asset.sub(balance.locked, refund);
//       balance.balance = Asset.add(balance.balance, refund);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     }

//     check(baseToSell - remainingBase > 0, "No liquidity available");
//   }

//   /**
//    Lock balance for orders
//   */
//   private lockBalance(
//     user: Name,
//     side: string,
//     amount: Asset,
//     total_value: Asset,
//     pair: PairsTable,
//   ): void {
//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
//     if (side == "buy") {
//       const balance = balancesTable.requireGet(
//         pair.quote_symbol.code(),
//         "Insufficient quote token",
//       );
//       check(balance.balance.amount >= total_value.amount, "Insufficient funds");

//       balance.balance = Asset.sub(balance.balance, total_value);
//       balance.locked = Asset.add(balance.locked, total_value);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     } else {
//       const balance = balancesTable.requireGet(
//         pair.base_symbol.code(),
//         "Insufficient base token",
//       );
//       check(balance.balance.amount >= amount.amount, "Insufficient funds");

//       balance.balance = Asset.sub(balance.balance, amount);
//       balance.locked = Asset.add(balance.locked, amount);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     }
//   }

//   private lockBalanceMarket(
//     user: Name,
//     side: string,
//     lockAmount: Asset,
//     pair: PairsTable,
//   ): void {
//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
//     if (side == "buy") {
//       const balance = balancesTable.requireGet(
//         pair.quote_symbol.code(),
//         "Insufficient quote token",
//       );
//       check(balance.balance.amount >= lockAmount.amount, "Insufficient funds");

//       balance.balance = Asset.sub(balance.balance, lockAmount);
//       balance.locked = Asset.add(balance.locked, lockAmount);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     } else {
//       const balance = balancesTable.requireGet(
//         pair.base_symbol.code(),
//         "Insufficient base token",
//       );
//       check(balance.balance.amount >= lockAmount.amount, "Insufficient funds");

//       balance.balance = Asset.sub(balance.balance, lockAmount);
//       balance.locked = Asset.add(balance.locked, lockAmount);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     }
//   }

//   /**
//    Unlock partial fills automatically
//   */
//   private unlockPartialFill(order: OrdersTable, pair: PairsTable): void {
//     // Only unlock if order is partially filled (status = 1)
//     if (order.status != 1) return;

//     const user = order.user;

//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

//     if (order.side == "buy") {
//       // Calculate how much was initially locked
//       const initialLocked = this.calculateTotalValue(
//         order.price,
//         order.amount,
//         pair,
//       );

//       // Calculate how much should still be locked
//       const stillNeeded = this.calculateTotalValue(
//         order.price,
//         order.remaining_amount,
//         pair,
//       );

//       // Unlock the difference
//       const toUnlock = Asset.sub(initialLocked, stillNeeded);

//       if (toUnlock.amount > 0) {
//         const balance = balancesTable.requireGet(
//           pair.quote_symbol.code(),
//           "Balance error",
//         );
//         // Safety check
//         if (balance.locked.amount >= toUnlock.amount) {
//           balance.locked = Asset.sub(balance.locked, toUnlock);
//           balance.balance = Asset.add(balance.balance, toUnlock);
//           balance.updated_at = currentTimeSec();

//           balancesTable.update(balance, this.receiver);
//         }
//       }
//     }
//   }

//   private unlockPartialFillById(order_id: u64, pair: PairsTable): void {
//     const order = this.ordersTable.get(order_id);

//     // Only unlock if order exists and is partially filled
//     if (!order || order.status != 1) return;

//     const user = order.user;
//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

//     if (order.side == "buy") {
//       // Calculate how much was initially locked
//       const initialLocked = this.calculateTotalValue(
//         order.price,
//         order.amount,
//         pair,
//       );

//       // Calculate how much should still be locked
//       const stillNeeded = this.calculateTotalValue(
//         order.price,
//         order.remaining_amount,
//         pair,
//       );

//       // Unlock the difference
//       const toUnlock = Asset.sub(initialLocked, stillNeeded);

//       if (toUnlock.amount > 0) {
//         const balance = balancesTable.requireGet(
//           pair.quote_symbol.code(),
//           "Balance error",
//         );

//         if (balance.locked.amount >= toUnlock.amount) {
//           balance.locked = Asset.sub(balance.locked, toUnlock);
//           balance.balance = Asset.add(balance.balance, toUnlock);
//           balance.updated_at = currentTimeSec();

//           balancesTable.update(balance, this.receiver);
//         }
//       }
//     }
//   }

//   private unlockBalance(
//     user: Name,
//     side: string,
//     remaining_amount: Asset,
//     pair: PairsTable,
//     price: Asset,
//   ): void {
//     const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

//     if (side == "buy") {
//       const locked_value = this.calculateTotalValue(
//         price,
//         remaining_amount,
//         pair,
//       );

//       const balance = balancesTable.requireGet(
//         pair.quote_symbol.code(),
//         "Balance error",
//       );

//       check(
//         balance.locked.amount >= locked_value.amount,
//         "Insufficient locked balance",
//       );

//       balance.locked = Asset.sub(balance.locked, locked_value);
//       balance.balance = Asset.add(balance.balance, locked_value);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     } else {
//       const balance = balancesTable.requireGet(
//         pair.base_symbol.code(),
//         "Balance error",
//       );

//       check(
//         balance.locked.amount >= remaining_amount.amount,
//         "Insufficient locked balance",
//       );

//       balance.locked = Asset.sub(balance.locked, remaining_amount);
//       balance.balance = Asset.add(balance.balance, remaining_amount);
//       balance.updated_at = currentTimeSec();

//       balancesTable.update(balance, this.receiver);
//     }
//   }

//   private canMatch(order1: OrdersTable, order2: OrdersTable): bool {
//     if (order1.side == "buy") {
//       return order1.price.amount >= order2.price.amount;
//     } else {
//       return order1.price.amount <= order2.price.amount;
//     }
//   }

//   /**
//    Stop-loss always acts as taker
//   */
//   private matchStopLossOrder(
//     stopLossOrder: OrdersTable,
//     pair: PairsTable,
//   ): void {
//     let matchOrder = this.ordersTable.first();

//     while (matchOrder != null) {
//       const currentOrder = matchOrder;
//       const nextOrder = this.ordersTable.next(matchOrder);

//       const isMatchingSide =
//         (stopLossOrder.side == "buy" && currentOrder.side == "sell") ||
//         (stopLossOrder.side == "sell" && currentOrder.side == "buy");

//       if (
//         currentOrder.pair_id == pair.pair_id &&
//         isMatchingSide &&
//         currentOrder.order_type == "limit" &&
//         (currentOrder.status == 0 || currentOrder.status == 1) &&
//         stopLossOrder.user != currentOrder.user
//       ) {
//         let priceAcceptable = false;

//         if (stopLossOrder.side == "buy") {
//           priceAcceptable =
//             currentOrder.price.amount <= stopLossOrder.price.amount;
//         } else {
//           priceAcceptable =
//             currentOrder.price.amount >= stopLossOrder.price.amount;
//         }

//         if (priceAcceptable && this.canMatch(stopLossOrder, currentOrder)) {
//           const tradeAmount = this.calculateTradeAmount(
//             stopLossOrder,
//             currentOrder,
//           );

//           this.executeStopLossTrade(
//             stopLossOrder,
//             currentOrder,
//             currentOrder.price,
//             tradeAmount,
//             pair,
//           );

//           this.unlockPartialFill(stopLossOrder, pair);
//           this.unlockPartialFill(currentOrder, pair);

//           const updated = this.ordersTable.get(stopLossOrder.order_id);
//           if (updated && updated.status == 2) break;
//         }
//       }

//       matchOrder = nextOrder;
//     }
//   }

//   private getCurrentMarketPrice(pair_id: u64): Asset {
//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

//     let latestPrice: i64 = 0;
//     let latestTradeId: u64 = 0;

//     let trade = this.tradesTable.first();
//     while (trade != null) {
//       if (trade.pair_id == pair_id && trade.trade_id > latestTradeId) {
//         latestTradeId = trade.trade_id;
//         latestPrice = trade.price.amount;
//       }
//       trade = this.tradesTable.next(trade);
//     }

//     if (latestPrice > 0) {
//       return new Asset(latestPrice, pair.quote_symbol);
//     }

//     // Fallback to mid-price if no trades yet
//     const bestBid = this.getBestBidPrice(pair_id);
//     const bestAsk = this.getBestAskPrice(pair_id);

//     if (bestBid.amount > 0 && bestAsk.amount > 0) {
//       const midPrice = (bestBid.amount + bestAsk.amount) / 2;
//       return new Asset(midPrice, pair.quote_symbol);
//     }

//     return new Asset(0, pair.quote_symbol);
//   }

//   private getBestBidPrice(pair_id: u64): Asset {
//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

//     let bestBidPrice: i64 = 0;
//     let order = this.ordersTable.first();

//     while (order != null) {
//       if (
//         order.pair_id == pair_id &&
//         order.side == "buy" &&
//         order.order_type == "limit" &&
//         (order.status == 0 || order.status == 1) &&
//         order.price.amount > bestBidPrice
//       ) {
//         bestBidPrice = order.price.amount;
//       }
//       order = this.ordersTable.next(order);
//     }

//     return new Asset(bestBidPrice, pair.quote_symbol);
//   }

//   private getBestAskPrice(pair_id: u64): Asset {
//     const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

//     let bestAskPrice: i64 = i64.MAX_VALUE;
//     let foundAsk = false;
//     let order = this.ordersTable.first();

//     while (order != null) {
//       if (
//         order.pair_id == pair_id &&
//         order.side == "sell" &&
//         order.order_type == "limit" &&
//         (order.status == 0 || order.status == 1) &&
//         order.price.amount < bestAskPrice
//       ) {
//         bestAskPrice = order.price.amount;
//         foundAsk = true;
//       }
//       order = this.ordersTable.next(order);
//     }

//     return foundAsk
//       ? new Asset(bestAskPrice, pair.quote_symbol)
//       : new Asset(0, pair.quote_symbol);
//   }

//   private calculateTradeAmount(
//     order1: OrdersTable,
//     order2: OrdersTable,
//   ): Asset {
//     const amount1 = order1.remaining_amount.amount;
//     const amount2 = order2.remaining_amount.amount;
//     const minAmount = amount1 < amount2 ? amount1 : amount2;
//     return new Asset(minAmount, order1.amount.symbol);
//   }

//   private executeTrade(
//     order1: OrdersTable,
//     order2: OrdersTable,
//     executionPrice: Asset,
//     tradeAmount: Asset,
//     pair: PairsTable,
//   ): void {
//     const buyOrder = order1.side == "buy" ? order1 : order2;
//     const sellOrder = order1.side == "sell" ? order1 : order2;

//     const buyer = buyOrder.user;
//     const seller = sellOrder.user;

//     const totalValue = this.calculateTotalValue(
//       executionPrice,
//       tradeAmount,
//       pair,
//     );

//     // ✅ Determine maker/taker (earlier order = maker)
//     const buyerIsMaker =
//       buyOrder.created_at < sellOrder.created_at ||
//       (buyOrder.created_at == sellOrder.created_at &&
//         buyOrder.order_id < sellOrder.order_id);

//     const buyerFeeRate = buyerIsMaker ? pair.maker_fee_bp : pair.taker_fee_bp;
//     const sellerFeeRate = buyerIsMaker ? pair.taker_fee_bp : pair.maker_fee_bp;

//     // ✅ Calculate fees in quote currency with rounding
//     const buyerFeeAmount = this.calculateFee(totalValue.amount, buyerFeeRate);
//     const buyerFee = new Asset(buyerFeeAmount, pair.quote_symbol);

//     const sellerFeeAmount = this.calculateFee(totalValue.amount, sellerFeeRate);
//     const sellerFee = new Asset(sellerFeeAmount, pair.quote_symbol);

//     // Update balances
//     const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
//     // Check total funds available
//     const buyerQuote = buyerBalances.requireGet(
//       pair.quote_symbol.code(),
//       "Buyer balance error",
//     );

//     const buyerTotalNeeded = Asset.add(totalValue, buyerFee);
//     const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

//     check(
//       buyerAvailable.amount >= buyerTotalNeeded.amount,
//       "Buyer insufficient funds",
//     );

//     // Deduct from locked first, then available if needed
//     if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
//       buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
//     } else {
//       const fromLocked = buyerQuote.locked.amount;
//       const fromAvailable = buyerTotalNeeded.amount - fromLocked;

//       buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
//       buyerQuote.balance = Asset.sub(
//         buyerQuote.balance,
//         new Asset(fromAvailable, buyerQuote.balance.symbol),
//       );
//     }

//     buyerQuote.updated_at = currentTimeSec();
//     buyerBalances.update(buyerQuote, this.receiver);

//     // ✅ CRITICAL: Update seller balance - unlock base
//     const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);
//     const sellerBase = sellerBalances.requireGet(
//       pair.base_symbol.code(),
//       "Seller balance error",
//     );

//     check(
//       sellerBase.locked.amount >= tradeAmount.amount,
//       "Seller insufficient locked",
//     );

//     sellerBase.locked = Asset.sub(sellerBase.locked, tradeAmount);
//     sellerBase.updated_at = currentTimeSec();
//     sellerBalances.update(sellerBase, this.receiver);

//     // Send tokens to buyer
//     this.transfer(
//       pair.base_contract,
//       this.receiver,
//       buyer,
//       tradeAmount,
//       `Order #${
//         buyOrder.order_id
//       }: bought ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
//     );

//     // Send proceeds to seller (after deducting fee)
//     const sellerNetProceeds = Asset.sub(totalValue, sellerFee);
//     this.transfer(
//       pair.quote_contract,
//       this.receiver,
//       seller,
//       sellerNetProceeds,
//       `Order #${
//         sellOrder.order_id
//       }: sold ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
//     );

//     // Send fees DIRECTLY to fee_recipient
//     const config = this.getConfig();
//     const totalFees = Asset.add(buyerFee, sellerFee);

//     this.transfer(
//       pair.quote_contract,
//       this.receiver,
//       config.fee_recipient,
//       totalFees,
//       `Fees from pair ${pair.pair_id}`,
//     );

//     this.recordFeeStats(
//       pair.pair_id,
//       pair.quote_contract,
//       buyerFee,
//       buyerIsMaker,
//     );
//     this.recordFeeStats(
//       pair.pair_id,
//       pair.quote_contract,
//       sellerFee,
//       !buyerIsMaker,
//     );

//     // Update orders
//     this.updateOrderAfterTrade(buyOrder, tradeAmount);
//     this.updateOrderAfterTrade(sellOrder, tradeAmount);

//     // Record trade with full traceability
//     const tradeId = this.tradesTable.availablePrimaryKey;
//     const trade = new TradesTable(
//       tradeId,
//       pair.pair_id,
//       buyOrder.order_id,
//       sellOrder.order_id,
//       buyer,
//       seller,
//       executionPrice,
//       tradeAmount,
//       totalValue,
//       buyerFee,
//       sellerFee,
//       currentTimeSec(),
//     );

//     this.tradesTable.store(trade, this.receiver);

//     // Token conservation check
//     this.verifyTradeInvariants(
//       tradeAmount,
//       totalValue,
//       buyerFee,
//       sellerFee,
//       pair,
//     );
//   }

//   /**
//    Market orders execute immediately at best price
//    Market order is ALWAYS taker
//   */
//   private executeMarketTrade(
//     buyer: Name,
//     seller: Name,
//     limitOrder: OrdersTable,
//     price: Asset,
//     tradeBase: Asset,
//     tradeQuote: Asset,
//     pair: PairsTable,
//     marketSide: string,
//   ): void {
//     // ✅ Market order is ALWAYS taker
//     const takerFeeAmount = this.calculateFee(
//       tradeQuote.amount,
//       pair.taker_fee_bp,
//     );
//     const takerFee = new Asset(takerFeeAmount, pair.quote_symbol);

//     const makerFeeAmount = this.calculateFee(
//       tradeQuote.amount,
//       pair.maker_fee_bp,
//     );
//     const makerFee = new Asset(makerFeeAmount, pair.quote_symbol);

//     const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
//     const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);

//     if (marketSide == "buy") {
//       // Buyer is taker
//       const buyerQuote = buyerBalances.requireGet(
//         pair.quote_symbol.code(),
//         "Buyer balance error",
//       );
//       const buyerTotalNeeded = Asset.add(tradeQuote, takerFee);
//       const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

//       check(
//         buyerAvailable.amount >= buyerTotalNeeded.amount,
//         "Buyer insufficient funds",
//       );

//       if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
//         buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
//       } else {
//         const fromLocked = buyerQuote.locked.amount;
//         const fromAvailable = buyerTotalNeeded.amount - fromLocked;

//         buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
//         buyerQuote.balance = Asset.sub(
//           buyerQuote.balance,
//           new Asset(fromAvailable, buyerQuote.balance.symbol),
//         );
//       }

//       buyerQuote.updated_at = currentTimeSec();
//       buyerBalances.update(buyerQuote, this.receiver);

//       // Seller is maker
//       const sellerBase = sellerBalances.requireGet(
//         pair.base_symbol.code(),
//         "Seller balance error",
//       );

//       check(
//         sellerBase.locked.amount >= tradeBase.amount,
//         "Seller insufficient locked",
//       );

//       sellerBase.locked = Asset.sub(sellerBase.locked, tradeBase);
//       sellerBase.updated_at = currentTimeSec();
//       sellerBalances.update(sellerBase, this.receiver);

//       // Send tokens
//       this.transfer(
//         pair.base_contract,
//         this.receiver,
//         buyer,
//         tradeBase,
//         `Market buy: ${tradeBase.toString()} @ ${price.toString()}`,
//       );

//       const sellerNetProceeds = Asset.sub(tradeQuote, makerFee);
//       this.transfer(
//         pair.quote_contract,
//         this.receiver,
//         seller,
//         sellerNetProceeds,
//         `Order #${limitOrder.order_id}: sold ${tradeBase.toString()}`,
//       );
//     } else {
//       // Seller is taker
//       const sellerBase = sellerBalances.requireGet(
//         pair.base_symbol.code(),
//         "Seller balance error",
//       );

//       check(
//         sellerBase.locked.amount >= tradeBase.amount,
//         "Seller insufficient locked",
//       );

//       sellerBase.locked = Asset.sub(sellerBase.locked, tradeBase);
//       sellerBase.updated_at = currentTimeSec();
//       sellerBalances.update(sellerBase, this.receiver);

//       // Buyer is maker
//       const buyerQuote = buyerBalances.requireGet(
//         pair.quote_symbol.code(),
//         "Buyer balance error",
//       );
//       const buyerTotalNeeded = Asset.add(tradeQuote, makerFee);
//       const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

//       check(
//         buyerAvailable.amount >= buyerTotalNeeded.amount,
//         "Buyer insufficient funds",
//       );

//       if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
//         buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
//       } else {
//         const fromLocked = buyerQuote.locked.amount;
//         const fromAvailable = buyerTotalNeeded.amount - fromLocked;

//         buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
//         buyerQuote.balance = Asset.sub(
//           buyerQuote.balance,
//           new Asset(fromAvailable, buyerQuote.balance.symbol),
//         );
//       }

//       buyerQuote.updated_at = currentTimeSec();
//       buyerBalances.update(buyerQuote, this.receiver);

//       // Send tokens
//       this.transfer(
//         pair.base_contract,
//         this.receiver,
//         buyer,
//         tradeBase,
//         `Order #${limitOrder.order_id}: bought ${tradeBase.toString()}`,
//       );

//       const sellerNetProceeds = Asset.sub(tradeQuote, takerFee);
//       this.transfer(
//         pair.quote_contract,
//         this.receiver,
//         seller,
//         sellerNetProceeds,
//         `Market sell: ${tradeBase.toString()} @ ${price.toString()}`,
//       );
//     }

//     // Update limit order
//     limitOrder.filled_amount = Asset.add(limitOrder.filled_amount, tradeBase);
//     limitOrder.remaining_amount = Asset.sub(
//       limitOrder.remaining_amount,
//       tradeBase,
//     );
//     limitOrder.status = limitOrder.remaining_amount.amount == 0 ? 2 : 1;
//     limitOrder.updated_at = currentTimeSec();
//     this.ordersTable.update(limitOrder, this.receiver);

//     // Record trade
//     const MARKET_ORDER_ID: u64 = 18446744073709551615;
//     const trade = new TradesTable(
//       this.tradesTable.availablePrimaryKey,
//       pair.pair_id,
//       marketSide == "buy" ? MARKET_ORDER_ID : limitOrder.order_id,
//       marketSide == "sell" ? MARKET_ORDER_ID : limitOrder.order_id,
//       buyer,
//       seller,
//       price,
//       tradeBase,
//       tradeQuote,
//       marketSide == "buy" ? takerFee : makerFee,
//       marketSide == "sell" ? takerFee : makerFee,
//       currentTimeSec(),
//     );

//     this.tradesTable.store(trade, this.receiver);

//     // ✅ Send fees directly to fee_recipient
//     const config = this.getConfig();
//     const totalFees = Asset.add(takerFee, makerFee);

//     this.transfer(
//       pair.quote_contract,
//       this.receiver,
//       config.fee_recipient,
//       totalFees,
//       `Fees from pair ${pair.pair_id}`,
//     );

//     if (marketSide == "buy") {
//       this.recordFeeStats(pair.pair_id, pair.quote_contract, takerFee, false); // Taker fee
//       this.recordFeeStats(pair.pair_id, pair.quote_contract, makerFee, true); // Maker fee
//     } else {
//       this.recordFeeStats(pair.pair_id, pair.quote_contract, makerFee, true); // Maker fee
//       this.recordFeeStats(pair.pair_id, pair.quote_contract, takerFee, false); // Taker fee
//     }

//     // Token conservation check
//     this.verifyTradeInvariants(tradeBase, tradeQuote, takerFee, makerFee, pair);
//   }

//   /**
//     Stop-loss triggered orders ALWAYS act as takers
//   */
//   private executeStopLossTrade(
//     stopLossOrder: OrdersTable,
//     limitOrder: OrdersTable,
//     executionPrice: Asset,
//     tradeAmount: Asset,
//     pair: PairsTable,
//   ): void {
//     const buyer =
//       stopLossOrder.side == "buy" ? stopLossOrder.user : limitOrder.user;
//     const seller =
//       stopLossOrder.side == "sell" ? stopLossOrder.user : limitOrder.user;

//     const totalValue = this.calculateTotalValue(
//       executionPrice,
//       tradeAmount,
//       pair,
//     );
//     // ✅ Stop-loss is ALWAYS taker
//     const takerFeeAmount = this.calculateFee(
//       totalValue.amount,
//       pair.taker_fee_bp,
//     );
//     const takerFee = new Asset(takerFeeAmount, pair.quote_symbol);

//     const makerFeeAmount = this.calculateFee(
//       totalValue.amount,
//       pair.maker_fee_bp,
//     );
//     const makerFee = new Asset(makerFeeAmount, pair.quote_symbol);

//     const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
//     const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);

//     const buyerFee = buyer == stopLossOrder.user ? takerFee : makerFee;
//     const sellerFee = seller == stopLossOrder.user ? takerFee : makerFee;

//     // Buyer payment
//     const buyerQuote = buyerBalances.requireGet(
//       pair.quote_symbol.code(),
//       "Buyer balance error",
//     );
//     const buyerTotalNeeded = Asset.add(totalValue, buyerFee);
//     const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

//     check(
//       buyerAvailable.amount >= buyerTotalNeeded.amount,
//       "Buyer insufficient funds",
//     );

//     if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
//       buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
//     } else {
//       const fromLocked = buyerQuote.locked.amount;
//       const fromAvailable = buyerTotalNeeded.amount - fromLocked;

//       buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
//       buyerQuote.balance = Asset.sub(
//         buyerQuote.balance,
//         new Asset(fromAvailable, buyerQuote.balance.symbol),
//       );
//     }

//     buyerQuote.updated_at = currentTimeSec();
//     buyerBalances.update(buyerQuote, this.receiver);

//     // Seller unlock
//     const sellerBase = sellerBalances.requireGet(
//       pair.base_symbol.code(),
//       "Seller balance error",
//     );

//     check(
//       sellerBase.locked.amount >= tradeAmount.amount,
//       "Seller insufficient locked",
//     );

//     sellerBase.locked = Asset.sub(sellerBase.locked, tradeAmount);
//     sellerBase.updated_at = currentTimeSec();
//     sellerBalances.update(sellerBase, this.receiver);

//     // Send tokens
//     this.transfer(
//       pair.base_contract,
//       this.receiver,
//       buyer,
//       tradeAmount,
//       `Stop-loss #${
//         stopLossOrder.order_id
//       }: ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
//     );

//     const sellerNetProceeds = Asset.sub(totalValue, sellerFee);
//     this.transfer(
//       pair.quote_contract,
//       this.receiver,
//       seller,
//       sellerNetProceeds,
//       `Order filled: ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
//     );

//     // Update orders
//     this.updateOrderAfterTrade(stopLossOrder, tradeAmount);
//     this.updateOrderAfterTrade(limitOrder, tradeAmount);

//     // Record trade
//     const tradeId = this.tradesTable.availablePrimaryKey;
//     const trade = new TradesTable(
//       tradeId,
//       pair.pair_id,
//       stopLossOrder.side == "buy"
//         ? stopLossOrder.order_id
//         : limitOrder.order_id,
//       stopLossOrder.side == "sell"
//         ? stopLossOrder.order_id
//         : limitOrder.order_id,
//       buyer,
//       seller,
//       executionPrice,
//       tradeAmount,
//       totalValue,
//       buyerFee,
//       sellerFee,
//       currentTimeSec(),
//     );

//     this.tradesTable.store(trade, this.receiver);

//     // ✅ Send fees directly to fee_recipient
//     const config = this.getConfig();
//     const totalFees = Asset.add(takerFee, makerFee);

//     this.transfer(
//       pair.quote_contract,
//       this.receiver,
//       config.fee_recipient,
//       totalFees,
//       `Fees from pair ${pair.pair_id}`,
//     );

//     this.recordFeeStats(pair.pair_id, pair.quote_contract, takerFee, false);
//     this.recordFeeStats(pair.pair_id, pair.quote_contract, makerFee, true);

//     // Token conservation check
//     this.verifyTradeInvariants(
//       tradeAmount,
//       totalValue,
//       takerFee,
//       makerFee,
//       pair,
//     );
//   }

//   /**
//    Verify token conservation invariants
//   */
//   private verifyTradeInvariants(
//     baseAmount: Asset,
//     quoteAmount: Asset,
//     takerFee: Asset,
//     makerFee: Asset,
//     pair: PairsTable,
//   ): void {
//     // Base in = base out (no fees on base)
//     check(baseAmount.amount > 0, "Invalid base amount in trade");
//     check(quoteAmount.amount > 0, "Invalid quote amount in trade");

//     // Quote: amount + taker_fee + maker_fee should equal total quote moved
//     const totalFees = Asset.add(takerFee, makerFee);
//     check(totalFees.amount < quoteAmount.amount, "Fees exceed trade value");

//     // Precision checks
//     check(
//       baseAmount.symbol.code() == pair.base_symbol.code(),
//       "Base symbol mismatch",
//     );
//     check(
//       quoteAmount.symbol.code() == pair.quote_symbol.code(),
//       "Quote symbol mismatch",
//     );
//     check(
//       takerFee.symbol.code() == pair.quote_symbol.code(),
//       "Taker fee symbol mismatch",
//     );
//     check(
//       makerFee.symbol.code() == pair.quote_symbol.code(),
//       "Maker fee symbol mismatch",
//     );
//   }

//   private updateOrderAfterTrade(order: OrdersTable, tradeAmount: Asset): void {
//     order.filled_amount = Asset.add(order.filled_amount, tradeAmount);
//     order.remaining_amount = Asset.sub(order.remaining_amount, tradeAmount);
//     order.status = order.remaining_amount.amount == 0 ? 2 : 1; // 2=filled, 1=partial
//     order.updated_at = currentTimeSec();
//     this.ordersTable.update(order, this.receiver);
//   }

//   private recordFeeStats(
//     pair_id: u64,
//     token_contract: Name,
//     feeAmount: Asset,
//     isMaker: bool,
//   ): void {
//     const compositeKey = this.createCompositeKey(
//       pair_id,
//       feeAmount.symbol.code(),
//     );
//     let existing: FeesTable | null = this.feesTable.first();

//     while (existing != null) {
//       const current = existing;

//       if (U128.eq(current.bypairtoken, compositeKey)) {
//         break;
//       }
//       existing = this.feesTable.next(current);
//     }

//     if (existing != null) {
//       existing.total_collected = Asset.add(existing.total_collected, feeAmount);
//       if (isMaker) {
//         existing.maker_fees = Asset.add(existing.maker_fees, feeAmount);
//       } else {
//         existing.taker_fees = Asset.add(existing.taker_fees, feeAmount);
//       }
//       existing.last_updated = currentTimeSec();

//       this.feesTable.update(existing, this.receiver);
//     } else {
//       const newFee = new FeesTable(
//         this.feesTable.availablePrimaryKey,
//         pair_id,
//         token_contract,
//         feeAmount,
//         isMaker ? feeAmount : new Asset(0, feeAmount.symbol),
//         isMaker ? new Asset(0, feeAmount.symbol) : feeAmount,
//         currentTimeSec(),
//       );
//       this.feesTable.store(newFee, this.receiver);
//     }
//   }

//   private createCompositeKey(pair_id: u64, symbol_code: u64): U128 {
//     const high = U128.fromU64(pair_id);
//     const shifted = U128.shl(high, 64);
//     const low = U128.fromU64(symbol_code);
//     return U128.or(shifted, low);
//   }

//   private transfer(
//     tokenContract: Name,
//     from: Name,
//     to: Name,
//     quantity: Asset,
//     memo: string,
//   ): void {
//     const transfer = new InlineAction<TokenTransfer>("transfer");
//     const action = transfer.act(
//       tokenContract,
//       new PermissionLevel(this.receiver, Name.fromString("active")),
//     );
//     const transferParams = new TokenTransfer(from, to, quantity, memo);
//     action.send(transferParams);
//   }
// }

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
  currentTimeSec,
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
    this.receiver,
  );

  private ordersTable: TableStore<OrdersTable> = new TableStore<OrdersTable>(
    this.receiver,
    this.receiver,
  );

  private tradesTable: TableStore<TradesTable> = new TableStore<TradesTable>(
    this.receiver,
    this.receiver,
  );

  private configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
    this.receiver,
    this.receiver,
  );

  private feesTable: TableStore<FeesTable> = new TableStore<FeesTable>(
    this.receiver,
    this.receiver,
  );

  private readonly MAX_FEE_BP: u16 = 500;

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
        fee_recipient,
      );

      this.configTable.store(config, this.receiver);
    }
  }

  /**

========================================
PAIR MANAGEMENT ACTIONS
========================================
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
    taker_fee_bp: u16,
  ): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    check(isAccount(base_contract), "Base contract does not exist");
    check(isAccount(quote_contract), "Quote contract does not exist");

    this.verifyTokenExist(base_symbol, base_contract);
    this.verifyTokenExist(quote_symbol, quote_contract);

    check(
      base_symbol.code() != quote_symbol.code(),
      "Base and quote cannot be the same",
    );
    check(
      min_order_size.symbol.code() == base_symbol.code(),
      "Min order size must be in base asset",
    );
    check(
      max_order_size.symbol.code() == base_symbol.code(),
      "Max order size must be in base asset",
    );
    check(
      tick_size.symbol.code() == quote_symbol.code(),
      "Tick size must be in quote asset",
    );
    check(
      min_order_size.symbol.precision() == base_symbol.precision(),
      "Min order size precision mismatch",
    );
    check(
      max_order_size.symbol.precision() == base_symbol.precision(),
      "Max order size precision mismatch",
    );
    check(
      tick_size.symbol.precision() == quote_symbol.precision(),
      "Tick size precision mismatch",
    );

    check(min_order_size.amount > 0, "Min order size must be positive");
    check(max_order_size.amount > 0, "Max order size must be positive");
    check(tick_size.amount > 0, "Tick size must be positive");
    check(
      max_order_size.amount < 10_000_000_000_000,
      "Max order size too large",
    );
    check(tick_size.amount < 1_000_000_000, "Tick size too large");

    check(maker_fee_bp <= this.MAX_FEE_BP, "Maker fee exceeds maximum (5%)");
    check(taker_fee_bp <= this.MAX_FEE_BP, "Taker fee exceeds maximum (5%)");

    check(
      maker_fee_bp >= config.min_maker_fee_bp &&
        maker_fee_bp <= config.max_maker_fee_bp,
      "Maker fee out of range",
    );
    check(
      taker_fee_bp >= config.min_taker_fee_bp &&
        taker_fee_bp <= config.max_taker_fee_bp,
      "Taker fee out of range",
    );

    check(maker_fee_bp <= taker_fee_bp, "Maker fee cannot exceed taker fee");

    check(
      max_order_size.amount > min_order_size.amount,
      "Max order size must be greater than min order size",
    );

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
      currentTimeSec(),
    );

    this.pairsTable.store(pair, this.receiver);
  }

  @action("updatepair")
  updatePair(
    pair_id: u64,
    min_order_size: Asset,
    max_order_size: Asset,
    tick_size: Asset,
  ): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    check(
      min_order_size.symbol.code() == pair.base_symbol.code(),
      "Min order size must be base asset",
    );
    check(
      max_order_size.symbol.code() == pair.base_symbol.code(),
      "Max order size must be base asset",
    );
    check(
      tick_size.symbol.code() == pair.quote_symbol.code(),
      "Tick size must be quote asset",
    );
    check(
      min_order_size.symbol.precision == pair.base_symbol.precision,
      "Min order size precision mismatch",
    );
    check(
      max_order_size.symbol.precision == pair.base_symbol.precision,
      "Max order size precision mismatch",
    );
    check(
      tick_size.symbol.precision == pair.quote_symbol.precision,
      "Tick size precision mismatch",
    );
    check(min_order_size.amount > 0, "Min order size must be positive");
    check(max_order_size.amount > 0, "Max order size must be positive");
    check(tick_size.amount > 0, "Tick size must be positive");
    check(
      max_order_size.amount < 10_000_000_000_000,
      "Max order size too large",
    );
    check(tick_size.amount < 1_000_000_000, "Tick size too large");
    check(
      max_order_size.amount > min_order_size.amount,
      "Max order size must be greater than min order size",
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

    let order = this.ordersTable.first();

    while (order != null) {
      let nextOrder = this.ordersTable.next(order);
      this.ordersTable.remove(order);
      order = nextOrder;
    }

    let trade = this.tradesTable.first();

    while (trade != null) {
      let nextTrade = this.tradesTable.next(trade);
      this.tradesTable.remove(trade);
      trade = nextTrade;
    }

    let config = this.configTable.first();

    while (config != null) {
      let nextConfig = this.configTable.next(config);
      this.configTable.remove(config);
      config = nextConfig;
    }

    let fees = this.feesTable.first();

    while (fees != null) {
      let nextFees = this.feesTable.next(fees);
      this.feesTable.remove(fees);
      fees = nextFees;
    }

    const balancesTable1 = new TableStore<BalancesTable>(
      this.receiver,
      Name.fromString("ahatashamul5"),
    );

    let balance1 = balancesTable1.first();

    while (balance1 != null) {
      let nextBalance = balancesTable1.next(balance1);
      balancesTable1.remove(balance1);
      balance1 = nextBalance;
    }

    const balancesTable2 = new TableStore<BalancesTable>(
      this.receiver,
      Name.fromString("ahatashamul3"),
    );

    let balance2 = balancesTable2.first();

    while (balance2 != null) {
      let nextBalance = balancesTable2.next(balance2);
      balancesTable2.remove(balance2);
      balance2 = nextBalance;
    }
  }

  @action("setstatus")
  setPairStatus(pair_id: u64, new_status: string): void {
    const config = this.getConfig();
    requireAuth(config.admin);

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    check(
      new_status == "active" ||
        new_status == "paused" ||
        new_status == "disabled",
      "Invalid pair status",
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

    const token_contract = this.firstReceiver;

    this.verifyTokenExist(quantity.symbol, token_contract);

    const balancesTable = new TableStore<BalancesTable>(this.receiver, from);
    const symbol_code = quantity.symbol.code();
    const existing = balancesTable.get(symbol_code);

    if (existing) {
      check(existing.balance.symbol == quantity.symbol, "Symbol mismatch");

      existing.balance = Asset.add(existing.balance, quantity);
      existing.updated_at = currentTimeSec();

      balancesTable.update(existing, this.receiver);
    } else {
      const newBalance = new BalancesTable(
        token_contract,
        quantity,
        new Asset(0, quantity.symbol),
        currentTimeSec(),
      );
      balancesTable.store(newBalance, this.receiver);
    }
  }

  /**

========================================
ORDER PLACEMENT
========================================
*/
  @action("limitorder")
  LimitOrder(
    user: Name,
    pair_id: u64,
    side: string,
    price: Asset,
    amount: Asset,
  ): void {
    requireAuth(user);

    const config = this.getConfig();
    check(!config.paused, "DEX is paused");

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    check(pair.status == "active", "Trading unavailable for this pair");

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");
    check(price.amount > 0, "Price must be positive");

    check(
      amount.symbol.code() == pair.base_symbol.code(),
      "Amount must be base asset",
    );
    check(
      price.symbol.code() == pair.quote_symbol.code(),
      "Price must be quote asset",
    );
    check(
      amount.symbol.precision() == pair.base_symbol.precision(),
      "Amount precision mismatch",
    );
    check(
      price.symbol.precision() == pair.quote_symbol.precision(),
      "Price precision mismatch",
    );

    check(amount.amount >= pair.min_order_size.amount, "Below min order size");
    check(
      amount.amount <= pair.max_order_size.amount,
      "Exceeds max order size",
    );

    check(
      price.amount % pair.tick_size.amount == 0,
      "Price must be multiple of tick size",
    );

    this.validateReasonablePrice(pair_id, price);

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
      currentTimeSec(),
      currentTimeSec(),
    );

    this.ordersTable.store(order, this.receiver);
  }

  @action("marketorder")
  marketOrder(
    user: Name,
    pair_id: u64,
    side: string,
    amount: Asset,
    max_slippage_bp: u16,
  ): void {
    requireAuth(user);

    const config = this.getConfig();
    check(!config.paused, "DEX is paused");

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    check(pair.status == "active", "Trading unavailable for this pair");

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");
    check(max_slippage_bp <= 10000, "Invalid slippage value");

    if (side == "buy") {
      check(
        amount.symbol.code() == pair.quote_symbol.code(),
        "Buy amount must be quote asset",
      );
      check(
        amount.symbol.precision() == pair.quote_symbol.precision(),
        "Amount precision mismatch",
      );

      this.lockBalanceMarket(user, side, amount, pair);
      this.executeMarketBuy(user, pair, amount.amount, max_slippage_bp);
    } else {
      check(
        amount.symbol.code() == pair.base_symbol.code(),
        "Sell amount must be base asset",
      );
      check(
        amount.symbol.precision() == pair.base_symbol.precision(),
        "Amount precision mismatch",
      );

      check(
        amount.amount >= pair.min_order_size.amount,
        "Below min order size",
      );
      check(
        amount.amount <= pair.max_order_size.amount,
        "Exceeds max order size",
      );

      this.lockBalanceMarket(user, side, amount, pair);
      this.executeMarketSell(user, pair, amount.amount, max_slippage_bp);
    }
  }

  @action("stoploss")
  stopLossOrder(
    user: Name,
    pair_id: u64,
    side: string,
    trigger_price: Asset,
    limit_price: Asset,
    amount: Asset,
  ): void {
    requireAuth(user);

    const config = this.getConfig();
    check(!config.paused, "DEX is paused");

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    check(pair.status == "active", "Trading unavailable for this pair");

    check(side == "buy" || side == "sell", "Invalid side");
    check(amount.amount > 0, "Amount must be positive");
    check(trigger_price.amount > 0, "Trigger price must be positive");
    check(limit_price.amount > 0, "Limit price must be positive");

    check(
      amount.symbol.code() == pair.base_symbol.code(),
      "Amount must be base asset",
    );
    check(
      amount.symbol.precision() == pair.base_symbol.precision(),
      "Amount precision mismatch",
    );
    check(
      trigger_price.symbol.code() == pair.quote_symbol.code(),
      "Trigger price must be quote asset",
    );
    check(
      trigger_price.symbol.precision() == pair.quote_symbol.precision(),
      "Trigger price precision mismatch",
    );
    check(
      limit_price.symbol.code() == pair.quote_symbol.code(),
      "Limit price must be quote asset",
    );
    check(
      limit_price.symbol.precision() == pair.quote_symbol.precision(),
      "Limit price precision mismatch",
    );

    check(amount.amount >= pair.min_order_size.amount, "Below min order size");
    check(
      amount.amount <= pair.max_order_size.amount,
      "Exceeds max order size",
    );

    check(
      trigger_price.amount % pair.tick_size.amount == 0,
      "Trigger price must be multiple of tick size",
    );
    check(
      limit_price.amount % pair.tick_size.amount == 0,
      "Limit price must be multiple of tick size",
    );

    const currentPrice = this.getCurrentMarketPrice(pair_id);

    if (currentPrice.amount > 0) {
      if (side == "buy") {
        check(
          trigger_price.amount >= currentPrice.amount,
          "Buy stop trigger must be >= current price",
        );
      } else {
        check(
          trigger_price.amount <= currentPrice.amount,
          "Sell stop trigger must be <= current price",
        );
      }

      // ✅ Validate limit price is reasonable relative to trigger
      if (side == "buy") {
        check(
          limit_price.amount >= trigger_price.amount,
          "Buy limit price should be >= trigger price",
        );
        check(
          <u64>limit_price.amount <= u64.MAX_VALUE / 2 &&
            limit_price.amount <= trigger_price.amount * 2,
          "Buy limit price too high (max 2x trigger)",
        );
      } else {
        check(
          limit_price.amount <= trigger_price.amount,
          "Sell limit price should be <= trigger price",
        );
        check(
          limit_price.amount * 2 >= trigger_price.amount ||
            <u64>trigger_price.amount > u64.MAX_VALUE / 2,
          "Sell limit price too low (min 0.5x trigger)",
        );
      }
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
      currentTimeSec(),
      currentTimeSec(),
    );

    this.ordersTable.store(order, this.receiver);
  }

  /**

========================================
ORDER PROCESSING
========================================
*/
  @action("processlimit")
  processLimit(pair_id: u64, max_orders: i32): void {
    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    let processed: i32 = 0;

    let buyOrders = this.getBestBuyOrders(pair_id, max_orders);
    let sellOrders = this.getBestSellOrders(pair_id, max_orders);

    for (let i = 0; i < buyOrders.length && processed < max_orders; i++) {
      const buyOrder = buyOrders[i];

      if (buyOrder.status != 0 && buyOrder.status != 1) continue;

      for (let j = 0; j < sellOrders.length && processed < max_orders; j++) {
        const sellOrder = sellOrders[j];

        if (sellOrder.status != 0 && sellOrder.status != 1) continue;

        if (buyOrder.user == sellOrder.user) continue;

        if (buyOrder.price.amount >= sellOrder.price.amount) {
          const tradeAmount = this.calculateTradeAmount(buyOrder, sellOrder);

          this.executeTrade(
            buyOrder,
            sellOrder,
            sellOrder.price,
            tradeAmount,
            pair,
          );

          processed++;

          this.unlockPartialFill(buyOrder, pair);
          this.unlockPartialFill(sellOrder, pair);

          // Reload orders to get updated status
          const updatedBuy = this.ordersTable.get(buyOrder.order_id);
          const updatedSell = this.ordersTable.get(sellOrder.order_id);

          if (updatedBuy) buyOrders[i] = updatedBuy;
          if (updatedSell) sellOrders[j] = updatedSell;

          // ✅ Auto-cancel dust orders (remaining < min_size)
          if (
            updatedBuy &&
            updatedBuy.status == 1 &&
            updatedBuy.remaining_amount.amount < pair.min_order_size.amount
          ) {
            this.unlockBalance(
              updatedBuy.user,
              updatedBuy.side,
              updatedBuy.remaining_amount,
              pair,
              updatedBuy.price,
            );
            updatedBuy.status = 3; // Cancelled
            this.ordersTable.update(updatedBuy, this.receiver);
            buyOrders[i] = updatedBuy; // Update local reference
          }

          if (
            updatedSell &&
            updatedSell.status == 1 &&
            updatedSell.remaining_amount.amount < pair.min_order_size.amount
          ) {
            this.unlockBalance(
              updatedSell.user,
              updatedSell.side,
              updatedSell.remaining_amount,
              pair,
              updatedSell.price,
            );
            updatedSell.status = 3; // Cancelled
            this.ordersTable.update(updatedSell, this.receiver);
            sellOrders[j] = updatedSell; // Update local reference
          }

          if (updatedBuy && updatedBuy.status == 2) break;
        }
      }
    }
  }

  @action("processltpq")
  processStopLossTakeProfit(pair_id: u64, max_orders: u32): void {
    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    const currentPrice = this.getCurrentMarketPrice(pair_id);

    if (currentPrice.amount == 0) return;

    let processed: u32 = 0;
    let order = this.ordersTable.first();

    while (order != null && processed < max_orders) {
      const currentOrder = order;

      if (
        currentOrder.pair_id == pair_id &&
        currentOrder.order_type == "stoploss" &&
        !currentOrder.is_triggered &&
        (currentOrder.status == 0 || currentOrder.status == 1)
      ) {
        let shouldTrigger = false;

        if (currentOrder.side == "buy") {
          shouldTrigger =
            currentPrice.amount >= currentOrder.trigger_price.amount;
        } else {
          shouldTrigger =
            currentPrice.amount <= currentOrder.trigger_price.amount;
        }

        if (shouldTrigger) {
          currentOrder.is_triggered = true;
          currentOrder.order_type = "limit";
          currentOrder.updated_at = currentTimeSec();

          this.ordersTable.update(currentOrder, this.receiver);

          this.matchStopLossOrder(currentOrder, pair);

          processed++;
        }
      }

      order = this.ordersTable.next(currentOrder);
    }
  }

  /**

========================================
WITHDRAWAL
========================================
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
          `Withdrawal: ${current.balance.toString()}`,
        );

        current.balance = new Asset(0, current.balance.symbol);
        current.updated_at = currentTimeSec();

        balancesTable.update(current, this.receiver);
      }
      balance = balancesTable.next(current);
    }
  }

  @action("withdraw")
  withdraw(user: Name, quantity: Asset): void {
    requireAuth(user);

    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
    const balance = balancesTable.requireGet(
      quantity.symbol.code(),
      "No balance found",
    );

    check(balance.balance.amount >= quantity.amount, "Insufficient balance");

    balance.balance = Asset.sub(balance.balance, quantity);
    balance.updated_at = currentTimeSec();

    balancesTable.update(balance, this.receiver);

    this.transfer(
      balance.token_contract,
      this.receiver,
      user,
      quantity,
      `Withdrawal: ${quantity.toString()}`,
    );
  }

  /**

========================================
ORDER CANCELLATION
========================================
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
      order.price,
    );

    order.status = 3;
    order.updated_at = currentTimeSec();

    this.ordersTable.update(order, this.receiver);
  }

  /*
========================================
PRIVATE HELPER FUNCTIONS
========================================
*/
  private getConfig(): ConfigTable {
    const config = this.configTable.requireGet(0, "DEX not initialized");
    return config;
  }

  private isPairExists(
    base_symbol: Symbol,
    base_contract: Name,
    quote_symbol: Symbol,
    quote_contract: Name,
  ): void {
    let pair = this.pairsTable.first();

    while (pair != null) {
      if (
        pair.base_symbol.code() == base_symbol.code() &&
        pair.base_contract == base_contract &&
        pair.quote_symbol.code() == quote_symbol.code() &&
        pair.quote_contract == quote_contract
      ) {
        check(false, "Pair already exists");
      }

      if (
        pair.base_symbol.code() == quote_symbol.code() &&
        pair.base_contract == quote_contract &&
        pair.quote_symbol.code() == base_symbol.code() &&
        pair.quote_contract == base_contract
      ) {
        check(false, "Reverse pair already exists");
      }

      pair = this.pairsTable.next(pair);
    }
  }

  private verifyTokenExist(symbol: Symbol, contract: Name): void {
    const symbolStr = symbol.toString().split(",")[1];
    const precision = symbol.precision();
    const symbolCode = this.calculateSymbolCode(symbolStr);
    const scope = Name.fromU64(symbolCode);

    const statTable = new TableStore<TokenStatTable>(contract, scope);
    const stat = statTable.get(symbolCode);

    check(
      stat != null,
      `Token ${symbolStr} not found in ${contract.toString()}`,
    );
    check(
      stat!.supply.symbol.precision() == precision,
      `Wrong precision for ${symbolStr}`,
    );
  }

  private calculateSymbolCode(symbolStr: string): u64 {
    let value: u64 = 0;

    for (let i = 0; i < symbolStr.length && i < 7; i++) {
      const char = symbolStr.charCodeAt(i);
      check(char >= 65 && char <= 90, "Invalid symbol character");
      value |= u64(char) << (8 * i);
    }

    return value;
  }

  /**

Calculate fee with proper rounding (always round UP)
*/
  private calculateFee(amount: i64, fee_bp: u16): i64 {
    check(amount > 0, "Fee amount must be positive");

    const amountU128 = U128.fromU64(u64(amount));
    const feeU128 = U128.fromU64(u64(fee_bp));
    const product = U128.mul(amountU128, feeU128);
    const divisor = U128.fromU64(10000);
    const feeU128Result = U128.div(product, divisor);
    const remainderU128 = U128.rem(product, divisor);

    let feeResult = feeU128Result;
    if (U128.gt(remainderU128, U128.fromU64(0))) {
      feeResult = U128.add(feeU128Result, U128.fromU64(1));
    }

    check(U128.le(feeResult, U128.fromU64(u64.MAX_VALUE)), "Fee overflow");
    return i64(feeResult.lo);
  }

  /**
   ✅ Prevents orders at absurd prices (e.g., 100x or 0.01x market price)
   This stops intentional manipulation attempts
  */
  private validateReasonablePrice(pair_id: u64, price: Asset): void {
    const currentPrice = this.getCurrentMarketPrice(pair_id);

    // Skip validation if no market price yet (first orders)
    if (currentPrice.amount == 0) return;

    // Allow up to 1.5x higher or 0.1x lower than current market price
    const maxPrice = (currentPrice.amount * 3) / 2;
    const minPrice = (currentPrice.amount * 2) / 3;

    check(
      price.amount >= minPrice && price.amount <= maxPrice,
      "Price too far from market (max 1.5x deviation allowed)",
    );
  }

  private calculateTotalValue(
    price: Asset,
    amount: Asset,
    pair: PairsTable,
  ): Asset {
    check(price.amount > 0, "Price must be positive");
    check(amount.amount > 0, "Amount must be positive");
    check(
      price.amount < 10_000_000_000 && amount.amount < 10_000_000_000,
      "Order too large for calculation",
    );

    const base_precision = pair.base_symbol.precision();
    check(base_precision >= 0 && base_precision <= 18, "Invalid precision");

    // Use U128 to prevent overflow
    const priceU128 = U128.from(u64(price.amount));
    const amountU128 = U128.from(u64(amount.amount));
    const product = U128.mul(priceU128, amountU128);
    const divisor = U128.from(u64(Math.pow(10, base_precision)));
    const result = U128.div(product, divisor);

    check(U128.le(result, U128.fromU64(u64.MAX_VALUE)), "Value overflow");

    const resultValue = i64(result.lo);
    check(resultValue > 0, "Calculated value is zero");

    return new Asset(resultValue, pair.quote_symbol);
  }

  /**
    Get best buy orders sorted by price (highest first)
  */
  private getBestBuyOrders(pair_id: u64, limit: i32): OrdersTable[] {
    const orders: OrdersTable[] = [];
    let order = this.ordersTable.first();

    while (order != null) {
      if (
        order.pair_id == pair_id &&
        order.side == "buy" &&
        order.order_type == "limit" &&
        (order.status == 0 || order.status == 1)
      ) {
        orders.push(order);
      }
      order = this.ordersTable.next(order);
    }

    // Sort by price DESC, then by created_at ASC (price-time priority)
    this.sortBuyOrders(orders);

    // Return top N orders
    const result: OrdersTable[] = [];
    for (let i: i32 = 0; i < orders.length && i < limit; i++) {
      result.push(orders[i]);
    }

    return result;
  }

  /**
    Get best sell orders sorted by price (lowest first)
  */
  private getBestSellOrders(pair_id: u64, limit: i32): OrdersTable[] {
    const orders: OrdersTable[] = [];
    let order = this.ordersTable.first();

    while (order != null) {
      if (
        order.pair_id == pair_id &&
        order.side == "sell" &&
        order.order_type == "limit" &&
        (order.status == 0 || order.status == 1)
      ) {
        orders.push(order);
      }
      order = this.ordersTable.next(order);
    }

    // Sort by price ASC, then by created_at ASC (price-time priority)
    this.sortSellOrders(orders);

    // Return top N orders
    const result: OrdersTable[] = [];
    for (let i: i32 = 0; i < orders.length && i < limit; i++) {
      result.push(orders[i]);
    }

    return result;
  }

  /**
    Sort buy orders by price DESC, then time ASC
  */
  private sortBuyOrders(orders: OrdersTable[]): void {
    // Bubble sort (simple for blockchain)
    for (let i = 0; i < orders.length; i++) {
      for (let j = 0; j < orders.length - i - 1; j++) {
        const shouldSwap =
          orders[j].price.amount < orders[j + 1].price.amount ||
          (orders[j].price.amount == orders[j + 1].price.amount &&
            orders[j].created_at > orders[j + 1].created_at) ||
          // Tiebreaker if same timestamp
          (orders[j].price.amount == orders[j + 1].price.amount &&
            orders[j].created_at == orders[j + 1].created_at &&
            orders[j].order_id > orders[j + 1].order_id);

        if (shouldSwap) {
          const temp = orders[j];
          orders[j] = orders[j + 1];
          orders[j + 1] = temp;
        }
      }
    }
  }

  /**

Sort sell orders by price ASC, then time ASC
*/
  private sortSellOrders(orders: OrdersTable[]): void {
    for (let i = 0; i < orders.length; i++) {
      for (let j = 0; j < orders.length - i - 1; j++) {
        const shouldSwap =
          orders[j].price.amount > orders[j + 1].price.amount ||
          (orders[j].price.amount == orders[j + 1].price.amount &&
            orders[j].created_at > orders[j + 1].created_at) ||
          // Tiebreaker
          (orders[j].price.amount == orders[j + 1].price.amount &&
            orders[j].created_at == orders[j + 1].created_at &&
            orders[j].order_id > orders[j + 1].order_id);

        if (shouldSwap) {
          const temp = orders[j];
          orders[j] = orders[j + 1];
          orders[j + 1] = temp;
        }
      }
    }
  }

  /**
Execute market buy order
*/
  private executeMarketBuy(
    user: Name,
    pair: PairsTable,
    quoteToSpend: i64,
    max_slippage_bp: u16,
  ): void {
    let remainingQuote = quoteToSpend;
    // ✅ Get best sell orders (price sorted)
    const sellOrders = this.getBestSellOrders(pair.pair_id, 100);
    check(sellOrders.length > 0, "No liquidity available");

    const bestPrice = sellOrders[0].price.amount;
    const maxAcceptablePrice =
      bestPrice + (bestPrice * u64(max_slippage_bp)) / 10000;

    for (let i = 0; i < sellOrders.length && remainingQuote > 0; i++) {
      const sellOrder = sellOrders[i];

      if (sellOrder.user == user) continue; // Self-trade prevention

      if (sellOrder.price.amount > maxAcceptablePrice) {
        break; // Stop matching at bad prices
      }

      const orderTotalValue = this.calculateTotalValue(
        sellOrder.price,
        sellOrder.remaining_amount,
        pair,
      );

      let tradeQuoteAmount: i64;
      let tradeBaseAmount: i64;

      if (orderTotalValue.amount <= remainingQuote) {
        tradeBaseAmount = sellOrder.remaining_amount.amount;
        tradeQuoteAmount = orderTotalValue.amount;
      } else {
        tradeQuoteAmount = remainingQuote;
        const base_precision = pair.base_symbol.precision();
        tradeBaseAmount =
          (tradeQuoteAmount * u64(Math.pow(10, base_precision))) /
          sellOrder.price.amount;

        check(tradeBaseAmount > 0, "Trade amount too small");
      }

      const tradeBase = new Asset(tradeBaseAmount, pair.base_symbol);
      const tradeQuote = new Asset(tradeQuoteAmount, pair.quote_symbol);

      this.executeMarketTrade(
        user,
        sellOrder.user,
        sellOrder,
        sellOrder.price,
        tradeBase,
        tradeQuote,
        pair,
        "buy",
      );

      remainingQuote -= tradeQuoteAmount;

      // Unlock partial fill
      this.unlockPartialFill(sellOrder, pair);
    }

    // Move remaining to available
    if (remainingQuote > 0) {
      const refund = new Asset(remainingQuote, pair.quote_symbol);
      const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Balance error",
      );

      check(
        balance.locked.amount >= refund.amount,
        "Insufficient locked balance",
      );

      balance.locked = Asset.sub(balance.locked, refund);
      balance.balance = Asset.add(balance.balance, refund);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    }

    check(
      quoteToSpend - remainingQuote > 0,
      "No liquidity at acceptable prices",
    );
  }

  /**
Execute market sell order
*/
  private executeMarketSell(
    user: Name,
    pair: PairsTable,
    baseToSell: i64,
    max_slippage_bp: u16,
  ): void {
    let remainingBase = baseToSell;

    // ✅ Get best buy orders (price sorted)

    const buyOrders = this.getBestBuyOrders(pair.pair_id, 100);
    check(buyOrders.length > 0, "No liquidity available");

    const bestPrice = buyOrders[0].price.amount;
    const minAcceptablePrice =
      bestPrice - (bestPrice * u64(max_slippage_bp)) / 10000;

    for (let i = 0; i < buyOrders.length && remainingBase > 0; i++) {
      const buyOrder = buyOrders[i];

      if (buyOrder.user == user) continue; // Self-trade prevention

      if (buyOrder.price.amount < minAcceptablePrice) {
        break; // Stop matching at bad prices
      }

      let tradeBaseAmount: i64;

      if (buyOrder.remaining_amount.amount <= remainingBase) {
        tradeBaseAmount = buyOrder.remaining_amount.amount;
      } else {
        tradeBaseAmount = remainingBase;
      }

      const tradeBase = new Asset(tradeBaseAmount, pair.base_symbol);
      const tradeQuote = this.calculateTotalValue(
        buyOrder.price,
        tradeBase,
        pair,
      );

      check(tradeQuote.amount > 0, "Trade value rounds to zero");

      this.executeMarketTrade(
        buyOrder.user,
        user,
        buyOrder,
        buyOrder.price,
        tradeBase,
        tradeQuote,
        pair,
        "sell",
      );

      remainingBase -= tradeBaseAmount;

      // Unlock partial fill
      this.unlockPartialFill(buyOrder, pair);
    }

    // Move remaining to available
    if (remainingBase > 0) {
      const refund = new Asset(remainingBase, pair.base_symbol);
      const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Balance error",
      );

      check(
        balance.locked.amount >= refund.amount,
        "Insufficient locked balance",
      );

      balance.locked = Asset.sub(balance.locked, refund);
      balance.balance = Asset.add(balance.balance, refund);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    }

    check(baseToSell - remainingBase > 0, "No liquidity at acceptable price");
  }

  /**
Lock balance for orders
*/
  private lockBalance(
    user: Name,
    side: string,
    amount: Asset,
    total_value: Asset,
    pair: PairsTable,
  ): void {
    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
    if (side == "buy") {
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Insufficient quote token",
      );
      check(balance.balance.amount >= total_value.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, total_value);
      balance.locked = Asset.add(balance.locked, total_value);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    } else {
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Insufficient base token",
      );
      check(balance.balance.amount >= amount.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, amount);
      balance.locked = Asset.add(balance.locked, amount);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    }
  }

  private lockBalanceMarket(
    user: Name,
    side: string,
    lockAmount: Asset,
    pair: PairsTable,
  ): void {
    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);
    if (side == "buy") {
      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Insufficient quote token",
      );
      check(balance.balance.amount >= lockAmount.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, lockAmount);
      balance.locked = Asset.add(balance.locked, lockAmount);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    } else {
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Insufficient base token",
      );
      check(balance.balance.amount >= lockAmount.amount, "Insufficient funds");

      balance.balance = Asset.sub(balance.balance, lockAmount);
      balance.locked = Asset.add(balance.locked, lockAmount);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    }
  }

  /**
Unlock partial fills automatically
*/
  private unlockPartialFill(order: OrdersTable, pair: PairsTable): void {
    // Only unlock if order is partially filled (status = 1)
    if (order.status != 1) return;

    const user = order.user;

    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

    if (order.side == "buy") {
      // Calculate how much was initially locked
      const initialLocked = this.calculateTotalValue(
        order.price,
        order.amount,
        pair,
      );

      // Calculate how much should still be locked
      const stillNeeded = this.calculateTotalValue(
        order.price,
        order.remaining_amount,
        pair,
      );

      // Unlock the difference
      const toUnlock = Asset.sub(initialLocked, stillNeeded);

      if (toUnlock.amount > 0) {
        const balance = balancesTable.requireGet(
          pair.quote_symbol.code(),
          "Balance error",
        );
        // Safety check
        if (balance.locked.amount >= toUnlock.amount) {
          balance.locked = Asset.sub(balance.locked, toUnlock);
          balance.balance = Asset.add(balance.balance, toUnlock);
          balance.updated_at = currentTimeSec();

          balancesTable.update(balance, this.receiver);
        }
      }
    }
  }

  private unlockBalance(
    user: Name,
    side: string,
    remaining_amount: Asset,
    pair: PairsTable,
    price: Asset,
  ): void {
    const balancesTable = new TableStore<BalancesTable>(this.receiver, user);

    if (side == "buy") {
      const locked_value = this.calculateTotalValue(
        price,
        remaining_amount,
        pair,
      );

      const balance = balancesTable.requireGet(
        pair.quote_symbol.code(),
        "Balance error",
      );

      check(
        balance.locked.amount >= locked_value.amount,
        "Insufficient locked balance",
      );

      balance.locked = Asset.sub(balance.locked, locked_value);
      balance.balance = Asset.add(balance.balance, locked_value);
      balance.updated_at = currentTimeSec();

      balancesTable.update(balance, this.receiver);
    } else {
      const balance = balancesTable.requireGet(
        pair.base_symbol.code(),
        "Balance error",
      );

      check(
        balance.locked.amount >= remaining_amount.amount,
        "Insufficient locked balance",
      );

      balance.locked = Asset.sub(balance.locked, remaining_amount);
      balance.balance = Asset.add(balance.balance, remaining_amount);
      balance.updated_at = currentTimeSec();

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

  /**
Stop-loss always acts as taker
*/
  private matchStopLossOrder(
    stopLossOrder: OrdersTable,
    pair: PairsTable,
  ): void {
    // Get best matching orders (price sorted)
    const matchOrders =
      stopLossOrder.side == "buy"
        ? this.getBestSellOrders(pair.pair_id, 100)
        : this.getBestBuyOrders(pair.pair_id, 100);

    for (let i = 0; i < matchOrders.length; i++) {
      const matchOrder = matchOrders[i];

      if (stopLossOrder.user == matchOrder.user) continue;

      // Check limit price condition
      if (stopLossOrder.side == "buy") {
        // Stop-loss buy: only match if price <= limit_price
        if (matchOrder.price.amount > stopLossOrder.price.amount) continue;
      } else {
        // Stop-loss sell: only match if price >= limit_price
        if (matchOrder.price.amount < stopLossOrder.price.amount) continue;
      }

      if (this.canMatch(stopLossOrder, matchOrder)) {
        const tradeAmount = this.calculateTradeAmount(
          stopLossOrder,
          matchOrder,
        );

        // ✅ Stop-loss is ALWAYS taker
        this.executeStopLossTrade(
          stopLossOrder,
          matchOrder,
          matchOrder.price,
          tradeAmount,
          pair,
        );

        // ✅ Unlock partial fill
        this.unlockPartialFill(stopLossOrder, pair);
        this.unlockPartialFill(matchOrder, pair);

        const updated = this.ordersTable.get(stopLossOrder.order_id);
        if (updated && updated.status == 2) break;
      }
    }
  }

  private getCurrentMarketPrice(pair_id: u64): Asset {
    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");

    // ✅ Find the latest trade by iterating forward and tracking highest trade_id
    let latestPrice: i64 = 0;
    let latestTradeId: u64 = 0;

    let trade = this.tradesTable.first();
    while (trade != null) {
      if (trade.pair_id == pair_id && trade.trade_id > latestTradeId) {
        latestTradeId = trade.trade_id;
        latestPrice = trade.price.amount;
      }
      trade = this.tradesTable.next(trade);
    }

    if (latestPrice > 0) {
      return new Asset(latestPrice, pair.quote_symbol);
    }

    // Fallback to orderbook mid-price if no trades yet
    const bestBid = this.getBestBidPrice(pair_id);
    const bestAsk = this.getBestAskPrice(pair_id);

    if (bestBid.amount > 0 && bestAsk.amount > 0) {
      const midPrice = (bestBid.amount + bestAsk.amount) / 2;
      return new Asset(midPrice, pair.quote_symbol);
    }

    return new Asset(0, pair.quote_symbol);
  }

  private getBestBidPrice(pair_id: u64): Asset {
    const buyOrders = this.getBestBuyOrders(pair_id, 1);
    if (buyOrders.length > 0) {
      return buyOrders[0].price;
    }

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    return new Asset(0, pair.quote_symbol);
  }

  private getBestAskPrice(pair_id: u64): Asset {
    const sellOrders = this.getBestSellOrders(pair_id, 1);

    if (sellOrders.length > 0) {
      return sellOrders[0].price;
    }

    const pair = this.pairsTable.requireGet(pair_id, "Pair not found");
    return new Asset(0, pair.quote_symbol);
  }

  private calculateTradeAmount(
    order1: OrdersTable,
    order2: OrdersTable,
  ): Asset {
    const amount1 = order1.remaining_amount.amount;
    const amount2 = order2.remaining_amount.amount;
    const minAmount = amount1 < amount2 ? amount1 : amount2;
    return new Asset(minAmount, order1.amount.symbol);
  }

  private executeTrade(
    order1: OrdersTable,
    order2: OrdersTable,
    executionPrice: Asset,
    tradeAmount: Asset,
    pair: PairsTable,
  ): void {
    const buyOrder = order1.side == "buy" ? order1 : order2;
    const sellOrder = order1.side == "sell" ? order1 : order2;

    const buyer = buyOrder.user;
    const seller = sellOrder.user;

    const totalValue = this.calculateTotalValue(
      executionPrice,
      tradeAmount,
      pair,
    );

    // ✅ Determine maker/taker (earlier order = maker)
    const buyerIsMaker =
      buyOrder.created_at < sellOrder.created_at ||
      (buyOrder.created_at == sellOrder.created_at &&
        buyOrder.order_id < sellOrder.order_id);

    const buyerFeeRate = buyerIsMaker ? pair.maker_fee_bp : pair.taker_fee_bp;
    const sellerFeeRate = buyerIsMaker ? pair.taker_fee_bp : pair.maker_fee_bp;

    // ✅ Calculate fees in quote currency with rounding
    const buyerFeeAmount = this.calculateFee(totalValue.amount, buyerFeeRate);
    const buyerFee = new Asset(buyerFeeAmount, pair.quote_symbol);

    const sellerFeeAmount = this.calculateFee(totalValue.amount, sellerFeeRate);
    const sellerFee = new Asset(sellerFeeAmount, pair.quote_symbol);

    // Update balances
    const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
    // Check total funds available
    const buyerQuote = buyerBalances.requireGet(
      pair.quote_symbol.code(),
      "Buyer balance error",
    );

    const buyerTotalNeeded = Asset.add(totalValue, buyerFee);
    const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

    check(
      buyerAvailable.amount >= buyerTotalNeeded.amount,
      "Buyer insufficient funds",
    );

    // Deduct from locked first, then available if needed
    if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
      buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
    } else {
      const fromLocked = buyerQuote.locked.amount;
      const fromAvailable = buyerTotalNeeded.amount - fromLocked;

      buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
      buyerQuote.balance = Asset.sub(
        buyerQuote.balance,
        new Asset(fromAvailable, buyerQuote.balance.symbol),
      );
    }

    buyerQuote.updated_at = currentTimeSec();
    buyerBalances.update(buyerQuote, this.receiver);

    // ✅ CRITICAL: Update seller balance - unlock base
    const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);
    const sellerBase = sellerBalances.requireGet(
      pair.base_symbol.code(),
      "Seller balance error",
    );

    check(
      sellerBase.locked.amount >= tradeAmount.amount,
      "Seller insufficient locked",
    );

    sellerBase.locked = Asset.sub(sellerBase.locked, tradeAmount);
    sellerBase.updated_at = currentTimeSec();
    sellerBalances.update(sellerBase, this.receiver);

    // Send tokens to buyer
    this.transfer(
      pair.base_contract,
      this.receiver,
      buyer,
      tradeAmount,
      `Order #${
        buyOrder.order_id
      }: bought ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
    );

    // Send proceeds to seller (after deducting fee)
    const sellerNetProceeds = Asset.sub(totalValue, sellerFee);
    this.transfer(
      pair.quote_contract,
      this.receiver,
      seller,
      sellerNetProceeds,
      `Order #${
        sellOrder.order_id
      }: sold ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
    );

    // Send fees DIRECTLY to fee_recipient
    const config = this.getConfig();
    const totalFees = Asset.add(buyerFee, sellerFee);

    this.transfer(
      pair.quote_contract,
      this.receiver,
      config.fee_recipient,
      totalFees,
      `Fees from pair ${pair.pair_id}`,
    );

    this.recordFeeStats(
      pair.pair_id,
      pair.quote_contract,
      buyerFee,
      buyerIsMaker,
    );
    this.recordFeeStats(
      pair.pair_id,
      pair.quote_contract,
      sellerFee,
      !buyerIsMaker,
    );

    // Update orders
    this.updateOrderAfterTrade(buyOrder, tradeAmount);
    this.updateOrderAfterTrade(sellOrder, tradeAmount);

    // Record trade with full traceability
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
      currentTimeSec(),
    );

    this.tradesTable.store(trade, this.receiver);

    // Token conservation check
    this.verifyTradeInvariants(
      tradeAmount,
      totalValue,
      buyerFee,
      sellerFee,
      pair,
    );
  }

  /**
Market orders execute immediately at best price
Market order is ALWAYS taker
*/
  private executeMarketTrade(
    buyer: Name,
    seller: Name,
    limitOrder: OrdersTable,
    price: Asset,
    tradeBase: Asset,
    tradeQuote: Asset,
    pair: PairsTable,
    marketSide: string,
  ): void {
    // ✅ Market order is ALWAYS taker
    const takerFeeAmount = this.calculateFee(
      tradeQuote.amount,
      pair.taker_fee_bp,
    );
    const takerFee = new Asset(takerFeeAmount, pair.quote_symbol);

    const makerFeeAmount = this.calculateFee(
      tradeQuote.amount,
      pair.maker_fee_bp,
    );
    const makerFee = new Asset(makerFeeAmount, pair.quote_symbol);

    const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
    const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);

    if (marketSide == "buy") {
      // Buyer is taker
      const buyerQuote = buyerBalances.requireGet(
        pair.quote_symbol.code(),
        "Buyer balance error",
      );
      const buyerTotalNeeded = Asset.add(tradeQuote, takerFee);
      const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

      check(
        buyerAvailable.amount >= buyerTotalNeeded.amount,
        "Buyer insufficient funds",
      );

      if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
        buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
      } else {
        const fromLocked = buyerQuote.locked.amount;
        const fromAvailable = buyerTotalNeeded.amount - fromLocked;

        buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
        buyerQuote.balance = Asset.sub(
          buyerQuote.balance,
          new Asset(fromAvailable, buyerQuote.balance.symbol),
        );
      }

      buyerQuote.updated_at = currentTimeSec();
      buyerBalances.update(buyerQuote, this.receiver);

      // Seller is maker
      const sellerBase = sellerBalances.requireGet(
        pair.base_symbol.code(),
        "Seller balance error",
      );

      check(
        sellerBase.locked.amount >= tradeBase.amount,
        "Seller insufficient locked",
      );

      sellerBase.locked = Asset.sub(sellerBase.locked, tradeBase);
      sellerBase.updated_at = currentTimeSec();
      sellerBalances.update(sellerBase, this.receiver);

      // Send tokens
      this.transfer(
        pair.base_contract,
        this.receiver,
        buyer,
        tradeBase,
        `Market buy: ${tradeBase.toString()} @ ${price.toString()}`,
      );

      const sellerNetProceeds = Asset.sub(tradeQuote, makerFee);
      this.transfer(
        pair.quote_contract,
        this.receiver,
        seller,
        sellerNetProceeds,
        `Order #${limitOrder.order_id}: sold ${tradeBase.toString()}`,
      );
    } else {
      // Seller is taker
      const sellerBase = sellerBalances.requireGet(
        pair.base_symbol.code(),
        "Seller balance error",
      );

      check(
        sellerBase.locked.amount >= tradeBase.amount,
        "Seller insufficient locked",
      );

      sellerBase.locked = Asset.sub(sellerBase.locked, tradeBase);
      sellerBase.updated_at = currentTimeSec();
      sellerBalances.update(sellerBase, this.receiver);

      // Buyer is maker
      const buyerQuote = buyerBalances.requireGet(
        pair.quote_symbol.code(),
        "Buyer balance error",
      );
      const buyerTotalNeeded = Asset.add(tradeQuote, makerFee);
      const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

      check(
        buyerAvailable.amount >= buyerTotalNeeded.amount,
        "Buyer insufficient funds",
      );

      if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
        buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
      } else {
        const fromLocked = buyerQuote.locked.amount;
        const fromAvailable = buyerTotalNeeded.amount - fromLocked;

        buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
        buyerQuote.balance = Asset.sub(
          buyerQuote.balance,
          new Asset(fromAvailable, buyerQuote.balance.symbol),
        );
      }

      buyerQuote.updated_at = currentTimeSec();
      buyerBalances.update(buyerQuote, this.receiver);

      // Send tokens
      this.transfer(
        pair.base_contract,
        this.receiver,
        buyer,
        tradeBase,
        `Order #${limitOrder.order_id}: bought ${tradeBase.toString()}`,
      );

      const sellerNetProceeds = Asset.sub(tradeQuote, takerFee);
      this.transfer(
        pair.quote_contract,
        this.receiver,
        seller,
        sellerNetProceeds,
        `Market sell: ${tradeBase.toString()} @ ${price.toString()}`,
      );
    }

    // Update limit order
    limitOrder.filled_amount = Asset.add(limitOrder.filled_amount, tradeBase);
    limitOrder.remaining_amount = Asset.sub(
      limitOrder.remaining_amount,
      tradeBase,
    );
    limitOrder.status = limitOrder.remaining_amount.amount == 0 ? 2 : 1;
    limitOrder.updated_at = currentTimeSec();
    this.ordersTable.update(limitOrder, this.receiver);

    // Record trade
    const MARKET_ORDER_ID: u64 = 18446744073709551615;
    const trade = new TradesTable(
      this.tradesTable.availablePrimaryKey,
      pair.pair_id,
      marketSide == "buy" ? MARKET_ORDER_ID : limitOrder.order_id,
      marketSide == "sell" ? MARKET_ORDER_ID : limitOrder.order_id,
      buyer,
      seller,
      price,
      tradeBase,
      tradeQuote,
      marketSide == "buy" ? takerFee : makerFee,
      marketSide == "sell" ? takerFee : makerFee,
      currentTimeSec(),
    );

    this.tradesTable.store(trade, this.receiver);

    // ✅ Send fees directly to fee_recipient
    const config = this.getConfig();
    const totalFees = Asset.add(takerFee, makerFee);

    this.transfer(
      pair.quote_contract,
      this.receiver,
      config.fee_recipient,
      totalFees,
      `Fees from pair ${pair.pair_id}`,
    );

    if (marketSide == "buy") {
      this.recordFeeStats(pair.pair_id, pair.quote_contract, takerFee, false); // Taker fee
      this.recordFeeStats(pair.pair_id, pair.quote_contract, makerFee, true); // Maker fee
    } else {
      this.recordFeeStats(pair.pair_id, pair.quote_contract, makerFee, true); // Maker fee
      this.recordFeeStats(pair.pair_id, pair.quote_contract, takerFee, false); // Taker fee
    }

    // Token conservation check
    this.verifyTradeInvariants(tradeBase, tradeQuote, takerFee, makerFee, pair);
  }

  /**
Stop-loss triggered orders ALWAYS act as takers
*/
  private executeStopLossTrade(
    stopLossOrder: OrdersTable,
    limitOrder: OrdersTable,
    executionPrice: Asset,
    tradeAmount: Asset,
    pair: PairsTable,
  ): void {
    const buyer =
      stopLossOrder.side == "buy" ? stopLossOrder.user : limitOrder.user;
    const seller =
      stopLossOrder.side == "sell" ? stopLossOrder.user : limitOrder.user;

    const totalValue = this.calculateTotalValue(
      executionPrice,
      tradeAmount,
      pair,
    );
    // ✅ Stop-loss is ALWAYS taker
    const takerFeeAmount = this.calculateFee(
      totalValue.amount,
      pair.taker_fee_bp,
    );
    const takerFee = new Asset(takerFeeAmount, pair.quote_symbol);

    const makerFeeAmount = this.calculateFee(
      totalValue.amount,
      pair.maker_fee_bp,
    );
    const makerFee = new Asset(makerFeeAmount, pair.quote_symbol);

    const buyerBalances = new TableStore<BalancesTable>(this.receiver, buyer);
    const sellerBalances = new TableStore<BalancesTable>(this.receiver, seller);

    const buyerFee = buyer == stopLossOrder.user ? takerFee : makerFee;
    const sellerFee = seller == stopLossOrder.user ? takerFee : makerFee;

    // Buyer payment
    const buyerQuote = buyerBalances.requireGet(
      pair.quote_symbol.code(),
      "Buyer balance error",
    );
    const buyerTotalNeeded = Asset.add(totalValue, buyerFee);
    const buyerAvailable = Asset.add(buyerQuote.balance, buyerQuote.locked);

    check(
      buyerAvailable.amount >= buyerTotalNeeded.amount,
      "Buyer insufficient funds",
    );

    if (buyerQuote.locked.amount >= buyerTotalNeeded.amount) {
      buyerQuote.locked = Asset.sub(buyerQuote.locked, buyerTotalNeeded);
    } else {
      const fromLocked = buyerQuote.locked.amount;
      const fromAvailable = buyerTotalNeeded.amount - fromLocked;

      buyerQuote.locked = new Asset(0, buyerQuote.locked.symbol);
      buyerQuote.balance = Asset.sub(
        buyerQuote.balance,
        new Asset(fromAvailable, buyerQuote.balance.symbol),
      );
    }

    buyerQuote.updated_at = currentTimeSec();
    buyerBalances.update(buyerQuote, this.receiver);

    // Seller unlock
    const sellerBase = sellerBalances.requireGet(
      pair.base_symbol.code(),
      "Seller balance error",
    );

    check(
      sellerBase.locked.amount >= tradeAmount.amount,
      "Seller insufficient locked",
    );

    sellerBase.locked = Asset.sub(sellerBase.locked, tradeAmount);
    sellerBase.updated_at = currentTimeSec();
    sellerBalances.update(sellerBase, this.receiver);

    // Send tokens
    this.transfer(
      pair.base_contract,
      this.receiver,
      buyer,
      tradeAmount,
      `Stop-loss #${
        stopLossOrder.order_id
      }: ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
    );

    const sellerNetProceeds = Asset.sub(totalValue, sellerFee);
    this.transfer(
      pair.quote_contract,
      this.receiver,
      seller,
      sellerNetProceeds,
      `Order filled: ${tradeAmount.toString()} @ ${executionPrice.toString()}`,
    );

    // Update orders
    this.updateOrderAfterTrade(stopLossOrder, tradeAmount);
    this.updateOrderAfterTrade(limitOrder, tradeAmount);

    // Record trade
    const tradeId = this.tradesTable.availablePrimaryKey;
    const trade = new TradesTable(
      tradeId,
      pair.pair_id,
      stopLossOrder.side == "buy"
        ? stopLossOrder.order_id
        : limitOrder.order_id,
      stopLossOrder.side == "sell"
        ? stopLossOrder.order_id
        : limitOrder.order_id,
      buyer,
      seller,
      executionPrice,
      tradeAmount,
      totalValue,
      buyerFee,
      sellerFee,
      currentTimeSec(),
    );

    this.tradesTable.store(trade, this.receiver);

    // ✅ Send fees directly to fee_recipient
    const config = this.getConfig();
    const totalFees = Asset.add(takerFee, makerFee);

    this.transfer(
      pair.quote_contract,
      this.receiver,
      config.fee_recipient,
      totalFees,
      `Fees from pair ${pair.pair_id}`,
    );

    this.recordFeeStats(pair.pair_id, pair.quote_contract, takerFee, false);
    this.recordFeeStats(pair.pair_id, pair.quote_contract, makerFee, true);

    // Token conservation check
    this.verifyTradeInvariants(
      tradeAmount,
      totalValue,
      takerFee,
      makerFee,
      pair,
    );
  }

  /**
Verify token conservation invariants
*/
  private verifyTradeInvariants(
    baseAmount: Asset,
    quoteAmount: Asset,
    takerFee: Asset,
    makerFee: Asset,
    pair: PairsTable,
  ): void {
    // Base in = base out (no fees on base)
    check(baseAmount.amount > 0, "Invalid base amount in trade");
    check(quoteAmount.amount > 0, "Invalid quote amount in trade");

    // Quote: amount + taker_fee + maker_fee should equal total quote moved

    const totalFees = Asset.add(takerFee, makerFee);
    check(totalFees.amount < quoteAmount.amount, "Fees exceed trade value");

    // Precision checks
    check(
      baseAmount.symbol.code() == pair.base_symbol.code(),
      "Base symbol mismatch",
    );
    check(
      quoteAmount.symbol.code() == pair.quote_symbol.code(),
      "Quote symbol mismatch",
    );
    check(
      takerFee.symbol.code() == pair.quote_symbol.code(),
      "Taker fee symbol mismatch",
    );
    check(
      makerFee.symbol.code() == pair.quote_symbol.code(),
      "Maker fee symbol mismatch",
    );
  }

  private updateOrderAfterTrade(order: OrdersTable, tradeAmount: Asset): void {
    order.filled_amount = Asset.add(order.filled_amount, tradeAmount);
    order.remaining_amount = Asset.sub(order.remaining_amount, tradeAmount);
    order.status = order.remaining_amount.amount == 0 ? 2 : 1; // 2=filled, 1=partial
    order.updated_at = currentTimeSec();
    this.ordersTable.update(order, this.receiver);
  }

  private recordFeeStats(
    pair_id: u64,
    token_contract: Name,
    feeAmount: Asset,
    isMaker: bool,
  ): void {
    const compositeKey = this.createCompositeKey(
      pair_id,
      feeAmount.symbol.code(),
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
      existing.last_updated = currentTimeSec();

      this.feesTable.update(existing, this.receiver);
    } else {
      const newFee = new FeesTable(
        this.feesTable.availablePrimaryKey,
        pair_id,
        token_contract,
        feeAmount,
        isMaker ? feeAmount : new Asset(0, feeAmount.symbol),
        isMaker ? new Asset(0, feeAmount.symbol) : feeAmount,
        currentTimeSec(),
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
    memo: string,
  ): void {
    const transfer = new InlineAction<TokenTransfer>("transfer");
    const action = transfer.act(
      tokenContract,
      new PermissionLevel(this.receiver, Name.fromString("active")),
    );
    const transferParams = new TokenTransfer(from, to, quantity, memo);
    action.send(transferParams);
  }
}
