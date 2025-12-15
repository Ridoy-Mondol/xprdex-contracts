import * as _chain from "as-chain";
import { EMPTY_NAME, Name, Table } from "proton-tsc";



export class ConfigTableDB extends _chain.MultiIndex<ConfigTable> {

}

@table("config", nocodegen)

export class ConfigTable implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public admin: Name = EMPTY_NAME,
    public paused: bool = false,
    public min_maker_fee_bp: u16 = 0,
    public max_maker_fee_bp: u16 = 100,
    public min_taker_fee_bp: u16 = 0,
    public max_taker_fee_bp: u16 = 100,
    public fee_recipient: Name = EMPTY_NAME
  ) {
    
  }

  @primary
  get Primary(): u64 {
    return this.id;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.pack(this.admin);
        enc.packNumber<bool>(this.paused);
        enc.packNumber<u16>(this.min_maker_fee_bp);
        enc.packNumber<u16>(this.max_maker_fee_bp);
        enc.packNumber<u16>(this.min_taker_fee_bp);
        enc.packNumber<u16>(this.max_taker_fee_bp);
        enc.pack(this.fee_recipient);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.admin = obj;
        }
        this.paused = dec.unpackNumber<bool>();
        this.min_maker_fee_bp = dec.unpackNumber<u16>();
        this.max_maker_fee_bp = dec.unpackNumber<u16>();
        this.min_taker_fee_bp = dec.unpackNumber<u16>();
        this.max_taker_fee_bp = dec.unpackNumber<u16>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.fee_recipient = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += this.admin.getSize();
        size += sizeof<bool>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += sizeof<u16>();
        size += this.fee_recipient.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x4526B73000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return ConfigTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return ConfigTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.Primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): ConfigTableDB {
        return new ConfigTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
