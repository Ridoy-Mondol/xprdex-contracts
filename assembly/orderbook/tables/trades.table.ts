import { Asset, EMPTY_NAME, Name, Table, TimePointSec } from "proton-tsc";

@table("trades")
export class TradesTable extends Table {
  constructor(
    public trade_id: u64 = 0,
    public pair_id: u64 = 0,
    public buy_order_id: u64 = 0,
    public sell_order_id: u64 = 0,
    public buyer: Name = EMPTY_NAME,
    public seller: Name = EMPTY_NAME,
    public price: Asset = new Asset(), // Execution price in quote
    public amount: Asset = new Asset(), // Trade amount in base
    public total_value: Asset = new Asset(), // price × amount in quote
    public buyer_fee: Asset = new Asset(), // Fee paid by buyer (quote)
    public seller_fee: Asset = new Asset(), // Fee paid by seller (base)
    public executed_at: TimePointSec = new TimePointSec()
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.trade_id;
  }

  @secondary
  get bypair(): u64 {
    return this.pair_id;
  }

  set bypair(value: u64) {
    this.pair_id = value;
  }

  @secondary
  get bybuyer(): u64 {
    return this.buyer.N;
  }

  set bybuyer(value: u64) {
    this.buyer.N = value;
  }

  @secondary
  get byseller(): u64 {
    return this.seller.N;
  }

  set byseller(value: u64) {
    this.seller.N = value;
  }

  @secondary
  get byprice(): u64 {
    return this.price.amount;
  }

  set byprice(value: u64) {
    this.price.amount = value;
  }

  @secondary
  get bytimestamp(): u64 {
    return this.executed_at.secSinceEpoch();
  }

  set bytimestamp(value: u64) {}
}
