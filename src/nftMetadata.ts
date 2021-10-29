import * as fcl from "@onflow/fcl";
import { Address, UInt64 } from "@onflow/types";
import { FLOW_MAIN_API_KEY } from "./settings";

async function main(): Promise<void> {
  try {
    // Set up config
    fcl
      .config()
      .put("accessNode.api", "https://flow-mainnet.g.alchemy.com")
      .put("grpc.metadata", { api_key: FLOW_MAIN_API_KEY });

    const userAddress = "0xb2ea0fe697fdb4ff";

    // Extract all information needed for this nft metadata response
    // https://dapperlabs.notion.site/Generic-NFT-Response-0fc17e037bc34a2590c1d8f159bfe8d7
    const encodedTokenData = await fcl.send([
      fcl.script(`
      import NonFungibleToken from 0x1d7e57aa55817448
      import CNN_NFT from 0x329feb3ab062d289
      import Gaia from 0x8b148183c28ff88f
      import Beam from 0x86b4a0010a71cfc3
      import BlockleteGames_NFT from 0x329feb3ab062d289
      import ChainmonstersRewards from 0x93615d25d14fa337
      import Crave from 0x6d008a788fc27265
      import CricketMoments from 0xed398881d9bf40fb
      import Everbloom from 0xe703f7fee6400754
      import Shard from 0x82b54037a8f180cf
      import FantastecNFT from 0x2e1ee1e7a96826ce
      import Vouchers from 0x444f5ea22c6ea12c
      import KOTD from 0x23dddd854fcc8c6f
      import KlktnNFT from 0xabd6e80be7e9682c
      import MusicBlock from 0x5634aefcb76e7d8c
      import Mynft from 0xf6fcbef550d97aa5
      import NyatheesOVO from 0x75e0b6de94eb05d0
      import RaceDay_NFT from 0x329feb3ab062d289
      import RareRooms_NFT from 0x329feb3ab062d289
      import RCRDSHPNFT from 0x6c3ff40b90b928ab
      import SportsIconCollectible from 0x8de96244f54db422
      import StarlyCard from 0x5b82f21c0edf76e3
      import CaaPass from 0x98c9c2e548b84d31
      import TuneGO from 0x0d9bc5af3fc0c2e3
      import MatrixWorldFlowFestNFT from 0x2d2750f240198f91
      import TopShot from 0x0b2a3299cc857e29
      pub fun main(address: Address): {UInt64: {String: AnyStruct}} {
        let nftList: {String: [UInt64]} = {"CNN": [3009, 1103], "ChainmonstersRewards" : [115, 396]}
        // Get any NFT IDs in the Collection, and return with their metadata.
        var results: {UInt64: {String: AnyStruct}} = {}
        for key in nftList.keys {
          let nftIds = nftList[key]!
          if key == "Beam" {
          }
          if key == "BlockleteGames_NFT" {
  
          }
          if key == "ChainmonstersRewards" {
            let capability = getAccount(address).getCapability(/public/ChainmonstersRewardCollection)
            let collection = capability!
            for id in nftIds {
            }
          }
          if key == "Crave" {
          }
          if key == "CricketMoments" {
          }
          if key == "Shard" {
          }
          if key == "Everbloom" {
          }
          if key == "FantastecNFT" {
          }
          if key == "Vouchers" {
          }
          if key == "KOTD" {
          }
          if key == "KlktnNFT" {
          }
          if key == "MusicBlock" {
          }
          if key == "Mynft" {
          }
          if key == "Gaia" {
          }
          if key == "NyatheesOVO" {
          }
          if key == "RaceDay_NFT" {
          }
          if key == "RareRooms" {
          }
          if key == "RCRDSHPNFT" {
          }
          if key == "SportsIcon" {
          }
          if key == "StarlyCard" {
          }
          if key == "CaaPass" {
          }
          if key == "TuneGO" {
          }
          if key == "MatrixWorld" {
          }
          if key == "CNN" {
            let capability = getAccount(address).getCapability(CNN_NFT.CollectionPublicPath)
                .borrow<&CNN_NFT.Collection{CNN_NFT.CNN_NFTCollectionPublic}>()
            let collection = capability!
            for id in nftIds {
              let nft = collection.borrowCNN_NFT(id: id)
                    ?? panic("Cannot borrow CNN_NFT.NFT")
                let seriesID = CNN_NFT.getSetSeriesId(setId: nft.setId)!
                results.insert(
                    key: id,
                    {
                        "setID": nft.setId,
                        "setMaxEditions": CNN_NFT.getSetMaxEditions(setId: nft.setId)!,
                        "editionNum": nft.editionNum,
                        "setMetadata": CNN_NFT.getSetMetadata(setId: nft.setId)!,
                        "seriesID": seriesID,
                        "seriesMetadata": CNN_NFT.getSeriesMetadata(seriesId: seriesID)!,
                        // This *may* be nil, so don't ! it.
                        "metadataHash": CNN_NFT.getIpfsMetadataHashByNftEdition(setId: nft.setId, editionNum: nft.editionNum)
                    }
                )
            }
          }
          if key == "MatrixWorld" {
          }
          if key == "TopShot" {
          }
        }
        return results
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
