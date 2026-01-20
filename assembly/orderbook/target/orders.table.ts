import * as _chain from "as-chain";
import { Asset, EMPTY_NAME, Name, Table, U128 } from "proton-tsc";



export class OrdersTableDB extends _chain.MultiIndex<OrdersTable> {
    get byuserDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get bypairDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }
    get bystatusDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[2];
    }
    get bypriceDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[3];
    }
    get byPairPriceDB(): _chain.IDX128 {
        return <_chain.IDX128>this.idxdbs[4];
    }
    get bytriggerpriceDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[5];
    }

    
    updateByuser(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBypair(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBystatus(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByprice(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByPairPrice(idxIt: _chain.SecondaryIterator, value: U128, payer: Name): void {
        let secValue = _chain.newSecondaryValue_U128(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBytriggerprice(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("orders", nocodegen)

export class OrdersTable implements _chain.MultiIndexValue {
    
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
    public created_at: u64 = 0,
    public updated_at: u64 = 0,
  ) {
    
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

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.order_id);
        enc.packNumber<u64>(this.pair_id);
        enc.pack(this.user);
        enc.packString(this.side);
        enc.packString(this.order_type);
        enc.pack(this.price);
        enc.pack(this.amount);
        enc.pack(this.filled_amount);
        enc.pack(this.remaining_amount);
        enc.pack(this.trigger_price);
        enc.packNumber<bool>(this.is_triggered);
        enc.packNumber<u8>(this.status);
        enc.packNumber<u64>(this.created_at);
        enc.packNumber<u64>(this.updated_at);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.order_id = dec.unpackNumber<u64>();
        this.pair_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.user = obj;
        }
        this.side = dec.unpackString();
        this.order_type = dec.unpackString();
        
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
            this.filled_amount = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.remaining_amount = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.trigger_price = obj;
        }
        this.is_triggered = dec.unpackNumber<bool>();
        this.status = dec.unpackNumber<u8>();
        this.created_at = dec.unpackNumber<u64>();
        this.updated_at = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.user.getSize();
        size += _chain.Utils.calcPackedStringLength(this.side);
        size += _chain.Utils.calcPackedStringLength(this.order_type);
        size += this.price.getSize();
        size += this.amount.getSize();
        size += this.filled_amount.getSize();
        size += this.remaining_amount.getSize();
        size += this.trigger_price.getSize();
        size += sizeof<bool>();
        size += sizeof<u8>();
        size += sizeof<u64>();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA5D2ABE000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 2, 2),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 3, 3),
            new _chain.IDX128(code.N, scope.N, idxTableBase + 4, 4),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 5, 5),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return OrdersTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return OrdersTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.Primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.byuser);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.bypair);
                break;
            }
            case 2: {
                return _chain.newSecondaryValue_u64(this.bystatus);
                break;
            }
            case 3: {
                return _chain.newSecondaryValue_u64(this.byprice);
                break;
            }
            case 4: {
                return _chain.newSecondaryValue_U128(this.byPairPrice);
                break;
            }
            case 5: {
                return _chain.newSecondaryValue_u64(this.bytriggerprice);
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
                this.byuser = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bypair = _value;
                break;
            }
            case 2: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bystatus = _value;
                break;
            }
            case 3: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byprice = _value;
                break;
            }
            case 4: {
                let _value = _chain.getSecondaryValue_U128(value);
                this.byPairPrice = _value;
                break;
            }
            case 5: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bytriggerprice = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): OrdersTableDB {
        return new OrdersTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
