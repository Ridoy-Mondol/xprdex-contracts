import * as _chain from "as-chain";
import {
  Asset,
  EMPTY_NAME,
  Name,
  Symbol,
  Table,
} from "proton-tsc";



export class PairsTableDB extends _chain.MultiIndex<PairsTable> {
    get bybasesymbolDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get byquotesymbolDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }

    
    updateBybasesymbol(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByquotesymbol(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("pairs", nocodegen)

export class PairsTable implements _chain.MultiIndexValue {
    
  constructor(
    public pair_id: u64 = 0,
    public base_symbol: Symbol = new Symbol(),
    public base_contract: Name = EMPTY_NAME,
    public quote_symbol: Symbol = new Symbol(),
    public quote_contract: Name = EMPTY_NAME,
    public min_order_size: Asset = new Asset(), // Min trade amount in base token
    public max_order_size: Asset = new Asset(), // Max trade amount (prevent manipulation)
    public tick_size: Asset = new Asset(),
    public maker_fee_bp: u16 = 0,
    public taker_fee_bp: u16 = 0,
    public status: string = "", // "active", "paused", "disabled"
    public created_at: u64 = 0,
  ) {
    
  }

  @primary
  get Primary(): u64 {
    return this.pair_id;
  }

  @secondary
  get bybasesymbol(): u64 {
    return this.base_symbol.code();
  }

  set bybasesymbol(value: u64) {}

  @secondary
  get byquotesymbol(): u64 {
    return this.quote_symbol.code();
  }

  set byquotesymbol(value: u64) {}

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.pair_id);
        enc.pack(this.base_symbol);
        enc.pack(this.base_contract);
        enc.pack(this.quote_symbol);
        enc.pack(this.quote_contract);
        enc.pack(this.min_order_size);
        enc.pack(this.max_order_size);
        enc.pack(this.tick_size);
        enc.packNumber<u16>(this.maker_fee_bp);
        enc.packNumber<u16>(this.taker_fee_bp);
        enc.packString(this.status);
        enc.packNumber<u64>(this.created_at);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.pair_id = dec.unpackNumber<u64>();
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.base_symbol = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.base_contract = obj;
        }
        
        {
            let obj = new Symbol();
            dec.unpack(obj);
            this.quote_symbol = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.quote_contract = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.min_order_size = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.max_order_size = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.tick_size = obj;
        }
        this.maker_fee_bp = dec.unpackNumber<u16>();
        this.taker_fee_bp = dec.unpackNumber<u16>();
        this.status = dec.unpackString();
        this.created_at = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.base_symbol.getSize();
        size += this.base_contract.getSize();
        size += this.quote_symbol.getSize();
        size += this.quote_contract.getSize();
        size += this.min_order_size.getSize();
        size += this.max_order_size.getSize();
        size += this.tick_size.getSize();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += _chain.Utils.calcPackedStringLength(this.status);
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xA99D7C0000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return PairsTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return PairsTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.Primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.bybasesymbol);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.byquotesymbol);
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
                this.bybasesymbol = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byquotesymbol = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): PairsTableDB {
        return new PairsTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
