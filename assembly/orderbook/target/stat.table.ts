import * as _chain from "as-chain";
import { Asset, EMPTY_NAME, Name, Table } from "proton-tsc";



export class TokenStatTableDB extends _chain.MultiIndex<TokenStatTable> {

}

@table("stat", singleton, nocodegen)

export class TokenStatTable implements _chain.MultiIndexValue {
    
  constructor(
    public supply: Asset = new Asset(),
    public maxSupply: Asset = new Asset(),
    public issuer: Name = EMPTY_NAME
  ) {
    
  }

  @primary
  get Primary(): u64 {
    return this.supply.symbol.code();
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.supply);
        enc.pack(this.maxSupply);
        enc.pack(this.issuer);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.supply = obj;
        }
        
        {
            let obj = new Asset();
            dec.unpack(obj);
            this.maxSupply = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.issuer = obj;
        }
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.supply.getSize();
        size += this.maxSupply.getSize();
        size += this.issuer.getSize();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0xC64D900000000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return TokenStatTable.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return TokenStatTable.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0xC64D900000000000).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<TokenStatTable> {
        return new _chain.Singleton<TokenStatTable>(code, scope, this.tableName);
    }
}
