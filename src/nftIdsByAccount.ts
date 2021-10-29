import * as fcl from "@onflow/fcl";
import { FLOW_TEST_API_KEY } from "./settings";
import { Address } from "@onflow/types";

async function main(): Promise<void> {
  try {
    // Set up config
    fcl
      .config()
      .put("accessNode.api", "https://flow-testnet.g.alchemy.com")
      .put("grpc.metadata", { api_key: FLOW_TEST_API_KEY });

    const userAddress = "0x88a647cc4fb27416";
    const encodedTokenData = await fcl.send([
      fcl.script(`
      import NonFungibleToken from 0x631e88ae7f1d7c20
      import Gaia from 0xc523a8bbf10fc4a3     

      pub fun main(address: Address): {String: AnyStruct} {
        let account = getAccount(address)
        let ret: {String: AnyStruct} = {}
        var nfts: [{String: AnyStruct}] = []

        let gaiaCollectionRef = account.getCapability(Gaia.CollectionPublicPath)!.borrow<&{Gaia.CollectionPublic}>()
            ?? panic("Could not borrow Gaia receiver reference")
        nfts = []
        for id in gaiaCollectionRef.getIDs() {
          let nft = gaiaCollectionRef.borrowNFT(id: id)
          nfts.append({"id": id, "uuid": nft.uuid})
        }
        ret["Gaia"] = nfts;
        return ret
    }
     `),
      fcl.args([fcl.arg(userAddress, Address)]),
    ]);
    const response = await fcl.decode(encodedTokenData);
    console.log(response);
  } catch (e) {
    console.log(e);
  }
}

main();
