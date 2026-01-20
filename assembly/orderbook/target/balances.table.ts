import * as _chain from "as-chain";
import { Asset, EMPTY_NAME, Name, Table } from "proton-tsc";



export class BalancesTableDB extends _chain.MultiIndex<BalancesTable> {

}

@table("balances", nocodegen)

export class BalancesTable implements _chain.MultiIndexValue {
    
  constructor(
    public token_contract: Name = EMPTY_NAME,
    public balance: Asset = new Asset(),
    public locked: Asset = new Asset(),
    public updated_at: u64 = 0,
  ) {
    
  }

  @primary
  get Primary(): u64 {
    return this.balance.symbol.code();
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token_contract);
        enc.pack(this.balance);
        enc.pack(this.locked);
        enc.packNumber<u64>(this.updated_at);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.token_contract = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.balance = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.locked = obj;
        }
        this.updated_at = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token_contract.getSize();
        size += this.balance.getSize();
        size += this.locked.getSize();
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x39A269A158000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return BalancesTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return BalancesTable.tableIndexes(code, scope);
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


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): BalancesTableDB {
        return new BalancesTableDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
