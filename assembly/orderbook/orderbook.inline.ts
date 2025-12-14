import { ActionData, Name, Asset } from "proton-tsc";

@packer
export class TokenTransfer extends ActionData {
  constructor(
    public from: Name = new Name(),
    public to: Name = new Name(),
    public quantity: Asset = new Asset(),
    public memo: string = ""
  ) {
    super();
  }
}