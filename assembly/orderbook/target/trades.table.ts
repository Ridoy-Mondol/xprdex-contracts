import * as _chain from "as-chain";
import { Asset, EMPTY_NAME, Name, Table, TimePointSec } from "proton-tsc";



export class TradesTableDB extends _chain.MultiIndex<TradesTable> {
    get bypairDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get bybuyerDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }
    get bysellerDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[2];
    }
    get bypriceDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[3];
    }
    get bytimestampDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[4];
    }

    
    updateBypair(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBybuyer(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByseller(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByprice(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBytimestamp(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("trades", nocodegen)

export class TradesTable implements _chain.MultiIndexValue {
    
  constructor(
    public trade_id: u64 = 0,
    public pair_id: u64 = 0,
    public buy_order_id: u64 = 0,
    public sell_order_id: u64 = 0,
    public buyer: Name = EMPTY_NAME,
    public seller: Name = EMPTY_NAME,
    public price: Asset = new Asset(),   // Execution price in quote
    public amount: Asset = new Asset(),   // Trade amount in base
    public total_value: Asset = new Asset(),   // price × amount in quote
    public buyer_fee: Asset = new Asset(),   // Fee paid by buyer (quote)
    public seller_fee: Asset = new Asset(),  // Fee paid by seller (base)
    public executed_at: TimePointSec = new TimePointSec()
  ) {
    
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

  set bytimestamp(value: u64) {
    // this.executed_at.secSinceEpoch() = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.trade_id);
        enc.packNumber<u64>(this.pair_id);
        enc.packNumber<u64>(this.buy_order_id);
        enc.packNumber<u64>(this.sell_order_id);
        enc.pack(this.buyer);
        enc.pack(this.seller);
        enc.pack(this.price);
        enc.pack(this.amount);
        enc.pack(this.total_value);
        enc.pack(this.buyer_fee);
        enc.pack(this.seller_fee);
        enc.pack(this.executed_at);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.trade_id = dec.unpackNumber<u64>();
        this.pair_id = dec.unpackNumber<u64>();
        this.buy_order_id = dec.unpackNumber<u64>();
        this.sell_order_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.buyer = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.seller = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.price = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.amount = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.total_value = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.buyer_fee = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.seller_fee = obj;
        }
        
        {
            let obj = new TimePointSec();
            dec.unpack(obj);
            this.executed_at = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.buyer.getSize();
        size += this.seller.getSize();
        size += this.price.getSize();
        size += this.amount.getSize();
        size += this.total_value.getSize();
        size += this.buyer_fee.getSize();
        size += this.seller_fee.getSize();
        size += this.executed_at.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xCDCC956000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 2, 2),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 3, 3),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 4, 4),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return TradesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return TradesTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.Primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.bypair);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.bybuyer);
                break;
            }
            case 2: {
                return _chain.newSecondaryValue_u64(this.byseller);
                break;
            }
            case 3: {
                return _chain.newSecondaryValue_u64(this.byprice);
                break;
            }
            case 4: {
                return _chain.newSecondaryValue_u64(this.bytimestamp);
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
                return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
        }
    }

    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        switch (i) {
            case 0: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bypair = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bybuyer = _value;
                break;
            }
            case 2: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byseller = _value;
                break;
            }
            case 3: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byprice = _value;
                break;
            }
            case 4: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bytimestamp = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): TradesTableDB {
        return new TradesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
