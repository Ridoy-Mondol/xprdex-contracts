import * as _chain from "as-chain";
import { Asset, EMPTY_NAME, Name, Table, TimePointSec, U128 } from "proton-tsc";



export class FeesTableDB extends _chain.MultiIndex<FeesTable> {
    get bypairtokenDB(): _chain.IDX128 {
        return <_chain.IDX128>this.idxdbs[0];
    }
    get bypairDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }
    get bytokenDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[2];
    }

    
    updateBypairtoken(idxIt: _chain.SecondaryIterator, value: U128, payer: Name): void {
        let secValue = _chain.newSecondaryValue_U128(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBypair(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateBytoken(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("fees", nocodegen)

export class FeesTable implements _chain.MultiIndexValue {
    
  constructor(
    public fee_id: u64 = 0,
    public pair_id: u64 = 0,
    public token_contract: Name = EMPTY_NAME,
    public total_collected: Asset = new Asset(),
    public maker_fees: Asset = new Asset(), // Fees from makers
    public taker_fees: Asset = new Asset(), // Fees from takers
    public last_updated: TimePointSec = new TimePointSec()
  ) {
    
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

  set bypairtoken(value: u64) {
    // this.pair_id = value;
  }

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

  set bytoken(value: u64) {
    // this.total_collected.symbol.code() = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.fee_id);
        enc.packNumber<u64>(this.pair_id);
        enc.pack(this.token_contract);
        enc.pack(this.total_collected);
        enc.pack(this.maker_fees);
        enc.pack(this.taker_fees);
        enc.pack(this.last_updated);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.fee_id = dec.unpackNumber<u64>();
        this.pair_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token_contract = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.total_collected = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.maker_fees = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.taker_fees = obj;
        }
        
        {
            let obj = new TimePointSec();
            dec.unpack(obj);
            this.last_updated = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u64>();
        size += this.token_contract.getSize();
        size += this.total_collected.getSize();
        size += this.maker_fees.getSize();
        size += this.taker_fees.getSize();
        size += this.last_updated.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x5A95800000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX128(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 2, 2),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return FeesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return FeesTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.Primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_U128(this.bypairtoken);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.bypair);
                break;
            }
            case 2: {
                return _chain.newSecondaryValue_u64(this.bytoken);
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
                let _value = _chain.getSecondaryValue_U128(value);
                this.bypairtoken = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bypair = _value;
                break;
            }
            case 2: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.bytoken = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): FeesTableDB {
        return new FeesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
