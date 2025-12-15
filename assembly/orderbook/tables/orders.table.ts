import { Asset, EMPTY_NAME, Name, Table, TimePointSec, U128 } from "proton-tsc";

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
  get by_user(): u64 {
    return this.user.N;
  }

  @secondary
  get by_pair(): u64 {
    return this.pair_id;
  }

  @secondary
  get by_status(): u64 {
    return this.status;
  }

  @secondary
  get by_price(): u64 {
    return this.price.amount;
  }

  @secondary
  get by_pair_price(): U128 {
    const high = U128.fromU64(this.pair_id);
    const shifted = U128.shl(high, 64);
    const low = U128.fromU64(this.price.amount);
    return U128.or(shifted, low);
  }

  @secondary
  get by_trigger_price(): u64 {
    return this.trigger_price.amount;
  }
}
