import { Asset, EMPTY_NAME, Name, Table } from "proton-tsc";

@table("stat", singleton)
export class TokenStatTable extends Table {
  constructor(
    public supply: Asset = new Asset(),
    public maxSupply: Asset = new Asset(),
    public issuer: Name = EMPTY_NAME
  ) {
    super();
  }

  @primary
  get Primary(): u64 {
    return this.supply.symbol.code();
  }
}
