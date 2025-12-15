import { Asset, EMPTY_NAME, Name, Table, TimePointSec, U128 } from "proton-tsc";

@table("fees")
export class FeesTable extends Table {
  constructor(
    public fee_id: u64 = 0,
    public pair_id: u64 = 0,
    public token_contract: Name = EMPTY_NAME,
    public total_collected: Asset = new Asset(),
    public maker_fees: Asset = new Asset(), // Fees from makers
    public taker_fees: Asset = new Asset(), // Fees from takers
    public last_updated: TimePointSec = new TimePointSec()
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.fee_id;
  }

  @secondary
  get bypairtoken(): U128 {
    const high = U128.fromU64(this.pair_id);
    const shifted = U128.shl(high, 64);
    const low = U128.fromU64(this.total_collected.symbol.code());
    return U128.or(shifted, low);
  }

  set bypairtoken(value: u64) {}

  @secondary
  get bypair(): u64 {
    return this.pair_id;
  }

  set bypair(value: u64) {
    this.pair_id = value;
  }

  @secondary
  get bytoken(): u64 {
    return this.total_collected.symbol.code();
  }

  set bytoken(value: u64) {}
}
