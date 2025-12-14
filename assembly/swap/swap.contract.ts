import {
  Asset,
  check,
  Contract,
  currentTimeSec,
  EMPTY_NAME,
  InlineAction,
  isAccount,
  Name,
  PermissionLevel,
  requireAuth,
  Symbol,
  TableStore,
  U128,
} from "proton-tsc";
import {
  PoolsTable,
  LiquidityTable,
  ConfigTable,
  TokenStatTable,
  DepositTable,
  SwapsTable,
} from "./tables";
import { TokenTransfer } from "./swap.inline";

class TokenSymbolParam {
  constructor(public contract: Name = EMPTY_NAME, public sym: string = "0,") {}
}

class TokenAmount {
  constructor(
    public quantity: string = "0",
    public contract: Name = EMPTY_NAME
  ) {}
}

@contract
export class XPRSwap extends Contract {
  private poolsTable: TableStore<PoolsTable> = new TableStore<PoolsTable>(
    this.receiver,
    this.receiver
  );

  private liquidityTable: TableStore<LiquidityTable> =
    new TableStore<LiquidityTable>(this.receiver, this.receiver);

  public configTable: TableStore<ConfigTable> = new TableStore<ConfigTable>(
    this.receiver,
    this.receiver
  );

  public depositTable: TableStore<DepositTable> = new TableStore<DepositTable>(
    this.receiver,
    this.receiver
  );

  public swapsTable: TableStore<SwapsTable> = new TableStore<SwapsTable>(
    this.receiver,
    this.receiver
  );

  private readonly FEE_DENOMINATOR: u32 = 10000;

  @action("init")
  init(admin: Name): void {
    requireAuth(this.receiver);

    const config = new ConfigTable(0, false, 1000, admin, 30);
    this.configTable.set(config, this.receiver);
  }

  @action("createpool")
  createPool(
    token0: Name,
    token1: Name,
    token0Contract: Name,
    token1Contract: Name,
    token0Symbol: string,
    token1Symbol: string,
    token0Precision: u8,
    token1Precision: u8
  ): void {
    const config = this.configTable.requireGet(0, "Contract not initialized");
    requireAuth(config.admin);

    check(token0.N != token1.N, "IDENTICAL_ADDRESSES");
    check(token0Contract != EMPTY_NAME, "INVALID_CONTRACT_A");
    check(token1Contract != EMPTY_NAME, "INVALID_CONTRACT_B");

    check(isAccount(token0Contract), "CONTRACT_A_NOT_FOUND");
    check(isAccount(token1Contract), "CONTRACT_B_NOT_FOUND");

    check(
      token0.toString().toLowerCase() == token0Symbol.toLowerCase(),
      `Token0 name (${token0.toString()}) and symbol (${token0Symbol}) mismatch`
    );
    check(
      token1.toString().toLowerCase() == token1Symbol.toLowerCase(),
      `Token1 name (${token1.toString()}) and symbol (${token1Symbol}) mismatch`
    );

    this.verifyTokenExist(token0Contract, token0Symbol, token0Precision);
    this.verifyTokenExist(token1Contract, token1Symbol, token1Precision);

    // Sort tokens
    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];

    const existingPool = this.findPoolId(t0, t1);
    check(existingPool == -1, "POOL_EXISTS");

    let t0_contract: Name;
    let t1_contract: Name;
    let t0_symbol: Symbol;
    let t1_symbol: Symbol;

    if (token0.N < token1.N) {
      t0_contract = token0Contract;
      t1_contract = token1Contract;
      t0_symbol = new Symbol(token0Symbol, token0Precision);
      t1_symbol = new Symbol(token1Symbol, token1Precision);
    } else {
      t0_contract = token1Contract;
      t1_contract = token0Contract;
      t0_symbol = new Symbol(token1Symbol, token1Precision);
      t1_symbol = new Symbol(token0Symbol, token0Precision);
    }

    const newPool = new PoolsTable(
      this.poolsTable.availablePrimaryKey,
      t0,
      t1,
      t0_contract,
      t1_contract,
      t0_symbol,
      t1_symbol,
      0,
      0,
      0,
      U128.from(0),
      0,
      currentTimeSec(),
      U128.from(0),
      U128.from(0),
      config.admin
    );

    this.poolsTable.store(newPool, this.receiver);
  }

  // ============================================
  // DEPOSIT PREPARATION (MetalX Pattern)
  // ============================================

  @action("depositprep")
  depositPrep(owner: Name, symbols: TokenSymbolParam[]): void {
    requireAuth(owner);

    check(symbols.length == 2, "Must specify exactly 2 tokens");

    const config = this.configTable.requireGet(0, "Contract not initialized");
    check(!config.paused, "Contract is paused");

    const token1Contract = symbols[0].contract;
    const token1Symbol = this.parseSymbol(symbols[0].sym);
    const token1Info = this.parseSymbolInfo(symbols[0].sym);

    const token2Contract = symbols[1].contract;
    const token2Symbol = this.parseSymbol(symbols[1].sym);
    const token2Info = this.parseSymbolInfo(symbols[1].sym);

    const token1Name = Name.fromString(token1Info.toLowerCase());
    const token2Name = Name.fromString(token2Info.toLowerCase());

    const sorted = this.sortTokens(token1Name, token2Name);
    const poolId = this.findPoolId(sorted[0], sorted[1]);

    check(poolId != -1, "Pool does not exist for this token pair");

    const existing = this.depositTable.get(owner.N);

    if (existing) {
      existing.token1_contract = token1Contract;
      existing.token1_symbol = token1Symbol;
      existing.token2_contract = token2Contract;
      existing.token2_symbol = token2Symbol;
      existing.token1_received = 0;
      existing.token2_received = 0;
      existing.prepared_at = currentTimeSec();
      existing.expires_at = currentTimeSec() + 300;
      this.depositTable.update(existing, this.receiver);
    } else {
      const newDeposit = new DepositTable(
        owner,
        token1Contract,
        token1Symbol,
        token2Contract,
        token2Symbol,
        0,
        0,
        currentTimeSec(),
        currentTimeSec() + 300
      );
      this.depositTable.store(newDeposit, this.receiver);
    }
  }

  // ============================================
  // TOKEN TRANSFER NOTIFICATION (Receives deposits)
  // ============================================

  @action("transfer", notify)
  onTransfer(from: Name, to: Name, quantity: Asset, memo: string): void {
    if (to.N != this.receiver.N) return;
    if (from.N == this.receiver.N) return;

    if (memo.length == 0 || memo == "deposit") {
      this.handleDeposit(from, quantity);
    } else if (memo.includes(">")) {
      this.handleSwap(from, quantity, memo);
    }
  }

  @action("liquidityadd")
  liquidityAdd(
    owner: Name,
    add_token1: TokenAmount,
    add_token2: TokenAmount,
    add_token1_min: TokenAmount,
    add_token2_min: TokenAmount
  ): void {
    requireAuth(owner);

    const config = this.configTable.requireGet(0, "Contract not initialized");
    check(!config.paused, "Contract is paused");

    const prep = this.depositTable.requireGet(
      owner.N,
      "No deposit preparation found. Call depositprep first."
    );

    const asset1 = Asset.fromString(add_token1.quantity);
    const asset2 = Asset.fromString(add_token2.quantity);
    const asset1Min = Asset.fromString(add_token1_min.quantity);
    const asset2Min = Asset.fromString(add_token2_min.quantity);

    check(
      prep.token1_received >= <u64>asset1.amount,
      `Insufficient token1 deposited. Have: ${prep.token1_received}, Need: ${asset1.amount}`
    );
    check(
      prep.token2_received >= <u64>asset2.amount,
      `Insufficient token2 deposited. Have: ${prep.token2_received}, Need: ${asset2.amount}`
    );

    const token1Symbol = this.extractSymbolFromQuantity(add_token1.quantity);
    const token2Symbol = this.extractSymbolFromQuantity(add_token2.quantity);

    const token1Name = Name.fromString(token1Symbol.toLowerCase());
    const token2Name = Name.fromString(token2Symbol.toLowerCase());

    const sorted = this.sortTokens(token1Name, token2Name);
    const poolId = this.findPoolId(sorted[0], sorted[1]);
    const pool = this.poolsTable.requireGet(poolId, "Pool not found");

    const isToken1First = token1Name.N == pool.token0.N;

    let amount0Desired: u64 = isToken1First ? asset1.amount : asset2.amount;
    let amount1Desired: u64 = isToken1First ? asset2.amount : asset1.amount;
    let amount0Min: u64 = isToken1First ? asset1Min.amount : asset2Min.amount;
    let amount1Min: u64 = isToken1First ? asset2Min.amount : asset1Min.amount;

    let amount0: u64;
    let amount1: u64;

    if (pool.reserve0 == 0 && pool.reserve1 == 0) {
      amount0 = amount0Desired;
      amount1 = amount1Desired;
    } else {
      const amount1Optimal = this.quote(
        amount0Desired,
        pool.reserve0,
        pool.reserve1
      );

      if (amount1Optimal <= amount1Desired) {
        check(amount1Optimal >= amount1Min, "Insufficient token1 amount");
        amount0 = amount0Desired;
        amount1 = amount1Optimal;
      } else {
        const amount0Optimal = this.quote(
          amount1Desired,
          pool.reserve1,
          pool.reserve0
        );
        check(amount0Optimal <= amount0Desired, "Invalid amounts");
        check(amount0Optimal >= amount0Min, "Insufficient token0 amount");
        amount0 = amount0Optimal;
        amount1 = amount1Desired;
      }
    }

    let liquidity: u64;

    if (pool.lp_supply == 0) {
      const product = U128.mul(new U128(amount0), new U128(amount1));
      liquidity = this.sqrtU128(product);
      check(liquidity > config.min_liquidity, "Insufficient initial liquidity");
      liquidity -= config.min_liquidity;
      pool.lp_supply = config.min_liquidity;
    } else {
      liquidity = this.min(
        (amount0 * pool.lp_supply) / pool.reserve0,
        (amount1 * pool.lp_supply) / pool.reserve1
      );
    }

    check(liquidity > 0, "Insufficient liquidity minted");

    pool.reserve0 += amount0;
    pool.reserve1 += amount1;
    pool.lp_supply += liquidity;
    pool.kLast = U128.mul(new U128(pool.reserve0), new U128(pool.reserve1));
    pool.blockTimestampLast = currentTimeSec();
    this.poolsTable.update(pool, this.receiver);

    const existingPosition = this.findLiquidityPosition(poolId, owner);

    if (existingPosition) {
      existingPosition.lp_balance += liquidity;
      existingPosition.token0_contributed += amount0;
      existingPosition.token1_contributed += amount1;
      existingPosition.updated_at = currentTimeSec();
      this.liquidityTable.update(existingPosition, this.receiver);
    } else {
      const newPosition = new LiquidityTable(
        this.liquidityTable.availablePrimaryKey,
        poolId,
        owner,
        liquidity,
        amount0,
        amount1,
        currentTimeSec()
      );
      this.liquidityTable.store(newPosition, this.receiver);
    }

    if (isToken1First) {
      prep.token1_received -= amount0;
      prep.token2_received -= amount1;
    } else {
      prep.token1_received -= amount1;
      prep.token2_received -= amount0;
    }

    this.depositTable.update(prep, this.receiver);
  }

  @action("withdrawall")
  withdrawAll(owner: Name): void {
    requireAuth(owner);

    const prep = this.depositTable.get(owner.N);

    if (!prep) {
      return;
    }

    if (prep.token1_received > 0) {
      const asset1 = new Asset(prep.token1_received, prep.token1_symbol);
      this.transfer(
        prep.token1_contract,
        this.receiver,
        owner,
        asset1,
        "Refund excess deposit"
      );
    }

    if (prep.token2_received > 0) {
      const asset2 = new Asset(prep.token2_received, prep.token2_symbol);
      this.transfer(
        prep.token2_contract,
        this.receiver,
        owner,
        asset2,
        "Refund excess deposit"
      );
    }

    this.depositTable.remove(prep);
  }

  @action("remliquidity")
  removeLiquidity(
    token0: Name,
    token1: Name,
    token0Contract: Name,
    token1Contract: Name,
    liquidity: u64,
    amount0Min: u64,
    amount1Min: u64,
    token0Symbol: string,
    token1Symbol: string,
    token0Precision: u8,
    token1Precision: u8,
    provider: Name
  ): void {
    requireAuth(provider);

    const config = this.configTable.requireGet(0, "Contract not initialized");
    check(!config.paused, "Contract is paused");

    check(liquidity > 0, "INSUFFICIENT_LIQUIDITY_BURNED");

    const sorted = this.sortTokens(token0, token1);
    const t0 = sorted[0];
    const t1 = sorted[1];

    const poolId = this.findPoolId(t0, t1);
    const pool = this.poolsTable.requireGet(poolId, "POOL_NOT_FOUND");

    this.distributeFees(pool);

    const lpPosition = this.findLiquidityPosition(poolId, provider);
    check(lpPosition != null, "NO_LIQUIDITY");
    check(lpPosition!.lp_balance >= liquidity, "INSUFFICIENT_BALANCE");
    check(pool.lp_supply > 0, "NO_LIQUIDITY_IN_PAIR");

    const amount0 = U128.div(
      U128.mul(new U128(liquidity), new U128(pool.reserve0)),
      new U128(pool.lp_supply)
    ).lo;

    const amount1 = U128.div(
      U128.mul(new U128(liquidity), new U128(pool.reserve1)),
      new U128(pool.lp_supply)
    ).lo;

    check(amount0 > 0 && amount1 > 0, "INSUFFICIENT_LIQUIDITY_BURNED");
    check(amount0 >= amount0Min, "INSUFFICIENT_0_AMOUNT");
    check(amount1 >= amount1Min, "INSUFFICIENT_1_AMOUNT");

    lpPosition!.lp_balance -= liquidity;

    if (lpPosition!.lp_balance == 0) {
      this.liquidityTable.remove(lpPosition!);
    } else {
      this.liquidityTable.update(lpPosition!, this.receiver);
    }

    pool.reserve0 -= amount0;
    pool.reserve1 -= amount1;
    pool.lp_supply -= liquidity;

    pool.kLast = U128.mul(new U128(pool.reserve0), new U128(pool.reserve1));
    pool.blockTimestampLast = currentTimeSec();

    this.poolsTable.update(pool, this.receiver);

    // Transfer token0 from contract back to provider
    const asset0 = this.createAsset(amount0, token0Symbol, token0Precision);
    this.transfer(
      token0Contract,
      this.receiver,
      provider,
      asset0,
      "XPRSwap: Remove liquidity"
    );

    // Transfer token1 from contract back to provider
    const asset1 = this.createAsset(amount1, token1Symbol, token1Precision);
    this.transfer(
      token1Contract,
      this.receiver,
      provider,
      asset1,
      "XPRSwap: Remove liquidity"
    );
  }

  @action("pause")
  togglePause(paused: boolean): void {
    const config = this.configTable.requireGet(0, "Contract not initialized");
    requireAuth(config.admin);

    config.paused = paused;
    this.configTable.update(config, this.receiver);
  }

  /// ============================================
  // CLEAR TABLES
  // ============================================

  @action("clrpair")
  clearPair(): void {
    requireAuth(this.receiver);

    let cursor1 = this.poolsTable.first();
    while (cursor1 != null) {
      let nextCursor = this.poolsTable.next(cursor1);
      this.poolsTable.remove(cursor1);
      cursor1 = nextCursor;
    }
  }

  // ============================================
  // INTERNAL HELPERS
  // ============================================

  private sortTokens(tokenA: Name, tokenB: Name): Name[] {
    check(tokenA.N != tokenB.N, "IDENTICAL_ADDRESSES");
    return tokenA.N < tokenB.N ? [tokenA, tokenB] : [tokenB, tokenA];
  }

  private quote(amountA: u64, reserveA: u64, reserveB: u64): u64 {
    check(amountA > 0, "INSUFFICIENT_AMOUNT");
    check(reserveA > 0 && reserveB > 0, "INSUFFICIENT_LIQUIDITY");
    return (amountA * reserveB) / reserveA;
  }

  private findPoolId(token0: Name, token1: Name): u64 {
    const poolCount = this.poolsTable.availablePrimaryKey;
    for (let i: u64 = 0; i < poolCount; i++) {
      const pool = this.poolsTable.get(i);
      if (pool && pool.token0.N == token0.N && pool.token1.N == token1.N) {
        return pool.id;
      }
    }

    return -1;
  }

  private verifyTokenExist(
    tokenContract: Name,
    tokenSymbol: string,
    precision: u8
  ): void {
    const symbolCode = this.calculateSymbolCode(tokenSymbol);

    const scopeName = Name.fromU64(symbolCode);

    const statTable = new TableStore<TokenStatTable>(tokenContract, scopeName);

    const stat = statTable.get(symbolCode);

    check(
      stat != null,
      `TOKEN ${tokenSymbol.toString()} NOT FOUND IN ${tokenContract.toString()}`
    );

    check(
      stat!.supply.symbol.precision() == precision,
      `WRONG PRECISION FOR ${tokenSymbol}`
    );
  }

  private calculateSymbolCode(symbolStr: string): u64 {
    let value: u64 = 0;

    for (let i = 0; i < symbolStr.length && i < 7; i++) {
      const char = symbolStr.charCodeAt(i);
      check(char >= 65 && char <= 90, "INVALID_SYMBOL_CHARACTER");
      value |= u64(char) << (8 * i);
    }

    return value;
  }

  private sqrtU128(y: U128): u64 {
    if (U128.lt(y, new U128(4))) {
      if (U128.eq(y, U128.from(0))) return 0;
      return 1;
    }

    let z: U128 = y;
    let x: U128 = U128.add(U128.div(y, new U128(2)), U128.from(1));

    while (U128.lt(x, z)) {
      z = x;
      x = U128.div(U128.add(U128.div(y, x), x), new U128(2));
    }

    return z.toU64();
  }

  private min(a: u64, b: u64): u64 {
    return a < b ? a : b;
  }

  private createAsset(amount: u64, symbolCode: string, precision: u8): Asset {
    const symbol = new Symbol(symbolCode, precision);
    return new Asset(amount, symbol);
  }

  private parseSymbol(symbolStr: string): Symbol {
    const parts = symbolStr.split(",");
    check(
      parts.length == 2,
      "Invalid symbol format. Expected: 'precision,CODE'"
    );

    const precision = U8.parseInt(parts[0]) as u8;
    const code = parts[1].trim();

    return new Symbol(code, precision);
  }

  private parseSymbolInfo(symbolStr: string): string {
    const parts = symbolStr.split(",");
    check(
      parts.length == 2,
      "Invalid symbol format. Expected: 'precision,CODE'"
    );

    const code = parts[1].trim();
    return code;
  }

  private extractSymbolFromQuantity(quantity: string): string {
    check(quantity.length > 0, "Quantity cannot be empty");

    const parts = quantity.trim().split(" ");
    check(
      parts.length == 2,
      "Invalid quantity format, expected 'amount SYMBOL'"
    );

    const symbol = parts[1].trim();

    check(symbol.length > 0, "Symbol cannot be empty");

    for (let i = 0; i < symbol.length; i++) {
      const char = symbol.charCodeAt(i);
      check(
        char >= 65 && char <= 90,
        `Invalid symbol character at position ${i}: expected uppercase A-Z`
      );
    }

    check(
      symbol.length >= 1 && symbol.length <= 7,
      `Symbol length must be between 1 and 7 characters, got ${symbol.length}`
    );

    return symbol;
  }

  private distributeFees(pool: PoolsTable): void {
    if (pool.kLast.lo == 0 && pool.kLast.hi == 0) {
      return;
    }

    const currentK = U128.mul(new U128(pool.reserve0), new U128(pool.reserve1));

    // If K has grown, there are fees to distribute
    if (currentK > pool.kLast) {
      const rootK = this.sqrtU128(currentK);
      const rootKLast = this.sqrtU128(pool.kLast);

      if (rootK > rootKLast) {
        const numerator = U128.mul(
          new U128(pool.lp_supply),
          new U128(rootK - rootKLast)
        );
        const denominator = U128.add(
          U128.mul(new U128(rootK), new U128(5)),
          new U128(rootKLast)
        );

        const feeLiquidity = U128.div(numerator, denominator).lo;

        if (feeLiquidity > 0) {
          // Distribute this fee liquidity proportionally to all LP holders
          // by increasing the lp_supply (all existing LP tokens now represent more value)
          pool.lp_supply += feeLiquidity;
        }
      }
    }
  }

  private findLiquidityPosition(
    poolId: u64,
    provider: Name
  ): LiquidityTable | null {
    const count = this.liquidityTable.availablePrimaryKey;

    for (let i: u64 = 0; i < count; i++) {
      const position = this.liquidityTable.get(i);
      if (
        position &&
        position.pool_id == poolId &&
        position.provider.N == provider.N
      ) {
        return position;
      }
    }

    return null;
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
      new PermissionLevel(this.receiver, Name.fromString("active"))
    );

    const transferParams = new TokenTransfer(from, to, quantity, memo);

    action.send(transferParams);
  }

  private computeAmountOut(
    amountIn: u64,
    reserveIn: u64,
    reserveOut: u64,
    feeBasisPoints: u32
  ): u64 {
    check(amountIn > 0, "INSUFFICIENT_INPUT_AMOUNT");
    check(reserveIn > 0 && reserveOut > 0, "INSUFFICIENT_LIQUIDITY");

    const feeMultiplier = this.FEE_DENOMINATOR - feeBasisPoints;

    const amountInU128 = new U128(amountIn);
    const feeMultiplierU128 = new U128(feeMultiplier);
    const reserveInU128 = new U128(reserveIn);
    const reserveOutU128 = new U128(reserveOut);
    const feeDenominatorU128 = new U128(this.FEE_DENOMINATOR);

    const amountInWithFee = U128.mul(amountInU128, feeMultiplierU128);

    const numerator = U128.mul(amountInWithFee, reserveOutU128);

    const denominator = U128.add(
      U128.mul(reserveInU128, feeDenominatorU128),
      amountInWithFee
    );

    const amountOutU128 = U128.div(numerator, denominator);

    return amountOutU128.toU64();
  }

  private updatePriceAccumulators(pool: PoolsTable): void {
    const timeElapsed = currentTimeSec() - pool.blockTimestampLast;

    if (timeElapsed > 0 && pool.reserve0 != 0 && pool.reserve1 != 0) {
      const reserve0 = new U128(pool.reserve0);
      const reserve1 = new U128(pool.reserve1);

      const one = new U128(1);
      const shift = U128.shl(one, 112);

      const price0 = U128.div(U128.mul(reserve1, shift), reserve0);
      const price1 = U128.div(U128.mul(reserve0, shift), reserve1);

      pool.price0CumulativeLast = U128.add(
        pool.price0CumulativeLast,
        U128.mul(price0, new U128(timeElapsed))
      );

      pool.price1CumulativeLast = U128.add(
        pool.price1CumulativeLast,
        U128.mul(price1, new U128(timeElapsed))
      );
    }
  }

  private handleDeposit(from: Name, quantity: Asset): void {
    const prep = this.depositTable.get(from.N);

    if (!prep) {
      check(false, "No deposit preparation found. Call depositprep first.");
      return;
    }

    check(
      currentTimeSec() <= prep.expires_at,
      "Deposit preparation expired. Call depositprep again."
    );

    const tokenContract = this.firstReceiver;

    const isToken1 =
      tokenContract.N == prep.token1_contract.N &&
      quantity.symbol.code() == prep.token1_symbol.code() &&
      quantity.symbol.precision() == prep.token1_symbol.precision();

    const isToken2 =
      tokenContract.N == prep.token2_contract.N &&
      quantity.symbol.code() == prep.token2_symbol.code() &&
      quantity.symbol.precision() == prep.token2_symbol.precision();

    check(
      isToken1 || isToken2,
      "Token not prepared. Call depositprep with correct tokens."
    );

    if (isToken1) {
      prep.token1_received += quantity.amount;
    } else {
      prep.token2_received += quantity.amount;
    }

    this.depositTable.update(prep, this.receiver);
  }

  private handleSwap(from: Name, quantityIn: Asset, memo: string): void {
    const config = this.configTable.requireGet(0, "Contract not initialized");
    check(!config.paused, "Contract is paused");

    // Memo format: FROM>TO,SLIPPAGE
    const parts = memo.split(",");
    check(parts.length == 2, "Invalid swap memo format.");

    const pairPart = parts[0].trim(); // XUSDT>XUST
    const slippageStr = parts[1].trim(); // "1"

    // Parse decimal slippage safely
    const slippageFloat = F64.parseFloat(slippageStr);
    check(
      !isNaN(slippageFloat) && slippageFloat >= 0 && slippageFloat <= 100,
      "Invalid slippage value"
    );

    // Convert to basis points (1% = 100 bps)
    const slippageBps = <u64>Math.ceil(slippageFloat * 100.0);

    const tokens = pairPart.split(">");
    check(tokens.length == 2, "Invalid pool pair format");

    const memoTokenIn = tokens[0].trim().toLowerCase();
    const memoTokenOut = tokens[1].trim().toLowerCase();

    // Extract symbol from input Asset
    const tokenInSym = this.extractSymbolFromQuantity(quantityIn.toString());
    const tokenInName = Name.fromString(tokenInSym.toLowerCase());

    const memoTokenInName = Name.fromString(memoTokenIn);
    check(
      tokenInName.N == memoTokenInName.N,
      "Token mismatch: memo specifies different input token than received"
    );

    const tokenOutName = Name.fromString(memoTokenOut);

    const sorted = this.sortTokens(tokenInName, tokenOutName);
    const poolId = this.findPoolId(sorted[0], sorted[1]);

    check(poolId != -1, "Pool not found for this token pair");

    const pool = this.poolsTable.requireGet(poolId, "Pool not found");

    check(
      pool.reserve0 > 0 && pool.reserve1 > 0,
      "Insufficient liquidity in pool"
    );

    // Determine swap direction
    let reserveIn: u64;
    let reserveOut: u64;
    let tokenOutContract: Name;
    let tokenOutSymbol: Symbol;
    let isToken0Input: bool = tokenInName.N == pool.token0.N;

    if (isToken0Input) {
      reserveIn = pool.reserve0;
      reserveOut = pool.reserve1;
      tokenOutContract = pool.token1_contract;
      tokenOutSymbol = pool.token1_symbol;
    } else {
      reserveIn = pool.reserve1;
      reserveOut = pool.reserve0;
      tokenOutContract = pool.token0_contract;
      tokenOutSymbol = pool.token0_symbol;
    }

    const amountOut = this.computeAmountOut(
      quantityIn.amount,
      reserveIn,
      reserveOut,
      config.swap_fee
    );

    const minOut = (amountOut * (10000 - slippageBps)) / 10000;
    check(amountOut >= minOut, "Insufficient output amount after slippage");
    check(amountOut < reserveOut, "Insufficient liquidity");

    if (isToken0Input) {
      pool.reserve0 += quantityIn.amount;
      pool.reserve1 -= amountOut;
    } else {
      pool.reserve1 += quantityIn.amount;
      pool.reserve0 -= amountOut;
    }

    check(
      U128.ge(
        U128.mul(new U128(pool.reserve0), new U128(pool.reserve1)),
        U128.mul(new U128(reserveIn), new U128(reserveOut))
      ),
      "K invariant violated"
    );

    this.updatePriceAccumulators(pool);
    pool.blockTimestampLast = currentTimeSec();
    this.poolsTable.update(pool, this.receiver);

    const feePaid =
      (quantityIn.amount * config.swap_fee) / this.FEE_DENOMINATOR;
    const swapId = this.swapsTable.availablePrimaryKey;

    const swap = new SwapsTable(
      swapId,
      poolId,
      from,
      isToken0Input ? pool.token0 : pool.token1,
      isToken0Input ? pool.token1 : pool.token0,
      quantityIn.amount,
      amountOut,
      feePaid,
      currentTimeSec()
    );

    this.swapsTable.store(swap, this.receiver);

    const assetOut = new Asset(amountOut, tokenOutSymbol);
    this.transfer(tokenOutContract, this.receiver, from, assetOut, memo);
  }
}
