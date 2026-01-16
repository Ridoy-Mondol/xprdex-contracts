import {
  Asset,
  EMPTY_NAME,
  Name,
  Table,
  TimePointSec,
  U128,
  currentTimeSec,
} from "proton-tsc";

@table("orders")
export class OrdersTable extends Table {
  constructor(
    public order_id: u64 = 0,
    public pair_id: u64 = 0,
    public user: Name = EMPTY_NAME,
    public side: string = "", // "buy" or "sell"
    public order_type: string = "", // "limit", "market", "stoploss"
    public price: Asset = new Asset(),
    public amount: Asset = new Asset(),
    public filled_amount: Asset = new Asset(),
    public remaining_amount: Asset = new Asset(),
    public trigger_price: Asset = new Asset(),
    public is_triggered: bool = false,
    public status: u8 = 0, // 0=open,1=partial,2=filled,3=cancelled
    public created_at: TimePointSec = new TimePointSec(),
    public updated_at: TimePointSec = new TimePointSec()
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.order_id;
  }

  @secondary
  get byuser(): u64 {
    return this.user.N;
  }

  set byuser(value: u64) {
    this.user.N = value;
  }

  @secondary
  get bypair(): u64 {
    return this.pair_id;
  }

  set bypair(value: u64) {
    this.pair_id = value;
  }

  @secondary
  get bystatus(): u64 {
    return this.status;
  }

  set bystatus(value: u64) {
    this.status = value;
  }

  @secondary
  get byprice(): u64 {
    return this.price.amount;
  }

  set byprice(value: u64) {
    this.price.amount = value;
  }

  @secondary
  get byPairPrice(): U128 {
    const high = U128.fromU64(this.pair_id);
    const shifted = U128.shl(high, 64);
    const low = U128.fromU64(this.price.amount);
    return U128.or(shifted, low);
  }

  set byPairPrice(value: U128) {}

  @secondary
  get bytriggerprice(): u64 {
    return this.trigger_price.amount;
  }

  set bytriggerprice(value: u64) {
    this.trigger_price.amount = value;
  }
}
