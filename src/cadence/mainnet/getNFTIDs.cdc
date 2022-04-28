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
import KlktnNFT2 from 0xabd6e80be7e9682c
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
import Domains from 0x233eb012d34b0070
import Eternal from 0xc38aea683c0c4d38
import GooberXContract from 0x34f2bf4a80bb0f69
import TFCItems from 0x81e95660ab5308e1
import MintStoreItem from 0x20187093790b9aef
import BnGNFT from 0x7859c48816bfea3c
import GeniaceNFT from 0xabda6627c70c7f52
import Collectible from 0xf5b0eb433389ac3f
import CryptoZooNFT from 0x8ea44ab931cac762
import OneFootballCollectible from 0x6831760534292098
import TheFabricantMysteryBox_FF1 from 0xa0cbe021821c0965
import DieselNFT from 0x497153c597783bc3
import MiamiNFT from 0x429a19abea586a3e
import HaikuNFT from 0xf61e40c19db2a9e2
import FlowChinaBadge from 0x99fed1e8da4c3431
import AllDay from 0xe4cf4bdc1751c65d
import PackNFT from 0xe4cf4bdc1751c65d
import ItemNFT from 0xfc91de5e6566cc7c
import TheFabricantS1ItemNFT from 0x9e03b1f871b3513
import Andbox_NFT from 0x329feb3ab062d289
import ZeedzINO from 0x62b3063fbe672fc8
import Kicks from 0xf3cc54f4d91c2f6c
import BarterYardPackNFT from 0xa95b021cf8a30d80
import DayNFT from 0x1600b04bf033fb99
import Costacos_NFT from 0x329feb3ab062d289
import Canes_Vault_NFT from 0x329feb3ab062d289
import AmericanAirlines_NFT from 0x329feb3ab062d289
import The_Next_Cartel_NFT from 0x329feb3ab062d289
import Atheletes_Unlimited_NFT from 0x329feb3ab062d289
import Art_NFT from 0x329feb3ab062d289
import DGD_NFT from 0x329feb3ab062d289
import NowggNFT from 0x85b8bbf926dcddfa
import GogoroCollectible from 0x8c9bbcdcd7514081
import YahooCollectible from 0x758252ab932a3416
import SomePlaceCollectible from 0x667a16294a089ef8
import ARTIFACTPack from 0x24de869c5e40b2eb
import ARTIFACT from 0x24de869c5e40b2eb
import NftReality from 0x5892036f9111fbb8
import MatrixWorldAssetsNFT from 0xf20df769e658c257
import RacingTime from 0x8d4fa88ffa2d9117
import Momentables from 0x9d21537544d9123d
import GoatedGoats from 0x2068315349bdfce5
import GoatedGoatsTrait from 0x2068315349bdfce5
import DropzToken from 0x2ba17360b76f0143
import Necryptolis from 0x718efe5e88fe48ea
import FLOAT from 0x2d4c3caffbeab845
import BreakingT_NFT from 0x329feb3ab062d289
import Owners from 0x41cad19decccdf25
import Metaverse from 0xd756450f386fb4ac
import SwaychainNFT from 0xa4e9020ad21eb30b
import MyNFT from 0x33f44e504a396ba7

pub fun main(ownerAddress: Address): {String: [UInt64]} {
    let owner = getAccount(ownerAddress)
    let ids: {String: [UInt64]} = {}


    if let col = owner.getCapability(CNN_NFT.CollectionPublicPath)
        .borrow<&{CNN_NFT.CNN_NFTCollectionPublic}>() {
            ids["CNN"] = col.getIDs()
        }
    if let col = owner.getCapability(/public/ChainmonstersRewardCollection)
        .borrow<&{ChainmonstersRewards.ChainmonstersRewardCollectionPublic}>() {
            ids["ChainmonstersRewards"] = col.getIDs()
        }
    if let col = owner.getCapability(Gaia.CollectionPublicPath)
        .borrow<&{Gaia.CollectionPublic}>() {
            ids["Gaia"] = col.getIDs()
        }
    if let col = owner.getCapability(Beam.CollectionPublicPath)
        .borrow<&{Beam.BeamCollectionPublic}>() {
            ids["Beam"] = col.getIDs()
        }
    if let col = owner.getCapability(BlockleteGames_NFT.CollectionPublicPath)
        .borrow<&{BlockleteGames_NFT.BlockleteGames_NFTCollectionPublic}>() {
            ids["BlockleteGames_NFT"] = col.getIDs()
        }
    if let col = owner.getCapability(Crave.CollectionPublicPath)
        .borrow<&{Crave.CraveCollectionPublic}>() {
            ids["Crave"] = col.getIDs()
        }
    if let col = owner.getCapability(CricketMoments.CollectionPublicPath)
        .borrow<&{CricketMoments.CricketMomentsCollectionPublic}>() {
            ids["CricketMoments"] = col.getIDs()
        }
    if let col = owner.getCapability(Everbloom.CollectionPublicPath)
        .borrow<&{Everbloom.PrintCollectionPublic}>() {
            ids["Everbloom"] = col.getIDs()
        }
    if let col = owner.getCapability(/public/EternalShardCollection)
        .borrow<&{Shard.ShardCollectionPublic}>() {
            ids["EternalShard"] = col.getIDs()
        }
    if let col = owner.getCapability(FantastecNFT.CollectionPublicPath)
        .borrow<&{FantastecNFT.FantastecNFTCollectionPublic}>() {
            ids["FantastecNFT"] = col.getIDs()
        }
    if let col = owner.getCapability(Vouchers.CollectionPublicPath)
        .borrow<&{Vouchers.CollectionPublic}>() {
            ids["Vouchers"] = col.getIDs()
        }
    if let col = owner.getCapability(KOTD.CollectionPublicPath)
        .borrow<&{KOTD.NiftoryCollectibleCollectionPublic}>() {
            ids["KOTD"] = col.getIDs()
        }
    if let col = owner.getCapability(KlktnNFT.CollectionPublicPath)
        .borrow<&{KlktnNFT.KlktnNFTCollectionPublic}>() {
            ids["KlktnNFT"] = col.getIDs()
        }
    if let col = owner.getCapability(KlktnNFT2.CollectionPublicPath)
        .borrow<&{KlktnNFT2.KlktnNFTCollectionPublic}>() {
            ids["KlktnNFT2"] = col.getIDs()
        }
    if let col = owner.getCapability(MusicBlock.CollectionPublicPath)
        .borrow<&{MusicBlock.MusicBlockCollectionPublic}>() {
            ids["MusicBlock"] = col.getIDs()
        }
    if let col = owner.getCapability(Mynft.CollectionPublicPath)
        .borrow<&{Mynft.MynftCollectionPublic}>() {
            ids["Mynft"] = col.getIDs()
        }
    if let col = owner.getCapability(NyatheesOVO.CollectionPublicPath)
        .borrow<&{NyatheesOVO.NFTCollectionPublic}>() {
            ids["NyatheesOVO"] = col.getIDs()
        }
    if let col = owner.getCapability(RaceDay_NFT.CollectionPublicPath)
        .borrow<&{RaceDay_NFT.RaceDay_NFTCollectionPublic}>() {
            ids["RaceDay_NFT"] = col.getIDs()
        }
    if let col = owner.getCapability(RareRooms_NFT.CollectionPublicPath)
        .borrow<&{RareRooms_NFT.RareRooms_NFTCollectionPublic}>() {
            ids["RareRooms_NFT"] = col.getIDs()
        }
    if let col = owner.getCapability(RCRDSHPNFT.collectionPublicPath)
        .borrow<&{NonFungibleToken.CollectionPublic}>() {
            ids["RCRDSHPNFT"] = col.getIDs()
        }
    if let col = owner.getCapability(SportsIconCollectible.CollectionPublicPath)
        .borrow<&{SportsIconCollectible.CollectibleCollectionPublic}>() {
            ids["SportsIconCollectible"] = col.getIDs()
        }
    if let col = owner.getCapability(StarlyCard.CollectionPublicPath)
        .borrow<&{StarlyCard.StarlyCardCollectionPublic}>() {
            ids["StarlyCard"] = col.getIDs()
        }
    if let col = owner.getCapability(CaaPass.CollectionPublicPath)
        .borrow<&{CaaPass.CollectionPublic}>() {
            ids["ThingFund"] = col.getIDs()
        }
    if let col = owner.getCapability(TuneGO.CollectionPublicPath)
        .borrow<&{TuneGO.TuneGOCollectionPublic}>() {
            ids["TuneGO"] = col.getIDs()
        }
    if let col = owner.getCapability(MatrixWorldFlowFestNFT.CollectionPublicPath)
        .borrow<&{MatrixWorldFlowFestNFT.MatrixWorldFlowFestNFTCollectionPublic}>() {
            ids["MatrixWorldFlowFestNFT"] = col.getIDs()
        }
    if let col = owner.getCapability(/public/MomentCollection)
        .borrow<&{TopShot.MomentCollectionPublic}>() {
            ids["TopShot"] = col.getIDs()
        }
    if let col = owner.getCapability(Domains.CollectionPublicPath)
        .borrow<&{Domains.CollectionPublic}>() {
            ids["Domains"] = col.getIDs()
        }
    if let col = owner.getCapability(/public/EternalMomentCollection)
        .borrow<&{Eternal.MomentCollectionPublic}>() {
            ids["EternalMoment"] = col.getIDs()
        }
    if let col = owner.getCapability(TFCItems.CollectionPublicPath)
        .borrow<&{TFCItems.TFCItemsCollectionPublic}>(){
            ids["TFCItems"] = col.getIDs()
        }
    if let col = owner.getCapability(GooberXContract.CollectionPublicPath)
        .borrow<&{GooberXContract.GooberCollectionPublic}>() {
            ids["Gooberz"] = col.getIDs()
        }

    if let col = owner.getCapability(MintStoreItem.CollectionPublicPath)
        .borrow<&{MintStoreItem.MintStoreItemCollectionPublic}>() {
            let mintStoreIDs = col.getIDs();
            for tokenID in mintStoreIDs {

                let nft = col!.borrowMintStoreItem(id: tokenID)
                let merchantName = MintStoreItem.getMerchant(merchantID:nft!.data.merchantID)!
                let merchKey = "MintStoreItem.".concat(merchantName);
                if ids[merchKey] == nil {
                    ids[merchKey] = [tokenID]
                } else {
                    ids[merchKey]!.append(tokenID)
                }
            }
    }

    if let col = owner.getCapability(BnGNFT.CollectionPublicPath)
        .borrow<&{BnGNFT.BnGNFTCollectionPublic}>() {
            ids["BiscuitsNGroovy"] = col.getIDs()
    }
    if let col = owner.getCapability(GeniaceNFT.CollectionPublicPath)
        .borrow<&{GeniaceNFT.GeniaceNFTCollectionPublic}>() {
            ids["GeniaceNFT"] = col.getIDs()
    }
    if let col = owner.getCapability(Collectible.CollectionPublicPath)
        .borrow<&{Collectible.CollectionPublic}>() {
            ids["Xtingles_NFT"] = col.getIDs()
    }
    if let col = owner.getCapability(CryptoZooNFT.CollectionPublicPath)
    .borrow<&{CryptoZooNFT.CryptoZooNFTCollectionPublic}>() {
        ids["InceptionAnimals"] = col.getIDs()
    }
    if let col = owner.getCapability(OneFootballCollectible.CollectionPublicPath)
    .borrow<&{OneFootballCollectible.OneFootballCollectibleCollectionPublic}>() {
        ids["OneFootballCollectible"] = col.getIDs()
    }

    if let col = owner.getCapability(TheFabricantMysteryBox_FF1.CollectionPublicPath)
    .borrow<&{TheFabricantMysteryBox_FF1.FabricantCollectionPublic}>() {
        ids["TheFabricantMysteryBox_FF1"] = col.getIDs()
    }

    if let col = owner.getCapability(DieselNFT.CollectionPublicPath)
    .borrow<&{DieselNFT.DieselCollectionPublic}>() {
        ids["DieselNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(MiamiNFT.CollectionPublicPath)
    .borrow<&{MiamiNFT.MiamiCollectionPublic}>() {
        ids["MiamiNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(HaikuNFT.HaikuCollectionPublicPath)
    .borrow<&{HaikuNFT.HaikuCollectionPublic}>() {
        ids["Bitku"] = col.getIDs()
    }

    if let col = owner.getCapability(FlowChinaBadge.CollectionPublicPath)
    .borrow<&{FlowChinaBadge.FlowChinaBadgeCollectionPublic}>() {
        ids["FlowFans"] = col.getIDs()
    }

    if let col = owner.getCapability(AllDay.CollectionPublicPath)
        .borrow<&{AllDay.MomentNFTCollectionPublic}>() {
            ids["AllDay"] = col.getIDs()
    }

    if let col = owner.getCapability(PackNFT.CollectionPublicPath)
        .borrow<&{NonFungibleToken.CollectionPublic}>() {
            ids["PackNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(ItemNFT.CollectionPublicPath)
    .borrow<&{ItemNFT.ItemCollectionPublic}>() {
        ids["ItemNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(TheFabricantS1ItemNFT.CollectionPublicPath)
    .borrow<&{TheFabricantS1ItemNFT.ItemCollectionPublic}>() {
        ids["TheFabricantS1ItemNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(Andbox_NFT.CollectionPublicPath)
        .borrow<&{Andbox_NFT.Andbox_NFTCollectionPublic}>() {
        ids["Andbox_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(ZeedzINO.CollectionPublicPath)
    .borrow<&{ZeedzINO.ZeedzCollectionPublic}>() {
        ids["ZeedzINO"] = col.getIDs()
    }

    if let col = owner.getCapability(Kicks.CollectionPublicPath)
    .borrow<&{Kicks.KicksCollectionPublic}>() {
        ids["Kicks"] = col.getIDs()
    }
    
    if let col = owner.getCapability(BarterYardPackNFT.CollectionPublicPath)
    .borrow<&{ BarterYardPackNFT.BarterYardPackNFTCollectionPublic }>() {
        ids["BarterYardPack"] = col.getIDs()
    }

    if let col = owner.getCapability(DayNFT.CollectionPublicPath)
        .borrow<&{DayNFT.CollectionPublic}>() {
            ids["DayNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(Costacos_NFT.CollectionPublicPath)
    .borrow<&{Costacos_NFT.Costacos_NFTCollectionPublic}>() {
        ids["Costacos_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(Canes_Vault_NFT.CollectionPublicPath)
    .borrow<&{Canes_Vault_NFT.Canes_Vault_NFTCollectionPublic}>() {
        ids["Canes_Vault_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(AmericanAirlines_NFT.CollectionPublicPath)
    .borrow<&{AmericanAirlines_NFT.AmericanAirlines_NFTCollectionPublic}>() {
        ids["AmericanAirlines_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(The_Next_Cartel_NFT.CollectionPublicPath)
    .borrow<&{The_Next_Cartel_NFT.The_Next_Cartel_NFTCollectionPublic}>() {
        ids["The_Next_Cartel_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(Atheletes_Unlimited_NFT.CollectionPublicPath)
    .borrow<&{Atheletes_Unlimited_NFT.Atheletes_Unlimited_NFTCollectionPublic}>() {
        ids["Atheletes_Unlimited_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(Art_NFT.CollectionPublicPath)
    .borrow<&{Art_NFT.Art_NFTCollectionPublic}>() {
        ids["Art_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(DGD_NFT.CollectionPublicPath)
    .borrow<&{DGD_NFT.DGD_NFTCollectionPublic}>() {
        ids["DGD_NFT"] = col.getIDs()
    }

    if let col = owner.getCapability(NowggNFT.CollectionPublicPath)
    .borrow<&{NowggNFT.NowggNFTCollectionPublic}>() {
        ids["NowggNFT"] = col.getIDs()
    }

    if let col = owner.getCapability(GogoroCollectible.CollectionPublicPath)
    .borrow<&{GogoroCollectible.CollectionPublic}>() {
        ids["GogoroCollectible"] = col.getIDs()
    }

    if let col = owner.getCapability(YahooCollectible.CollectionPublicPath)
    .borrow<&{YahooCollectible.CollectionPublic}>() {
        ids["YahooCollectible"] = col.getIDs()
    }

    if let col = owner.getCapability(SomePlaceCollectible.CollectionPublicPath)
    .borrow<&{NonFungibleToken.CollectionPublic}>() {
        ids["SomePlaceCollectible"] = col.getIDs()
    }

    if let col = owner.getCapability(ARTIFACTPack.collectionPublicPath)
    .borrow<&{ARTIFACTPack.CollectionPublic}>() {
        ids["ARTIFACTPack"] = col.getIDs()
    }

    if let col = owner.getCapability(ARTIFACT.collectionPublicPath)
    .borrow<&{ARTIFACT.CollectionPublic}>() {
        ids["ARTIFACT"] = col.getIDs()
    }

    if let col = owner.getCapability(NftReality.CollectionPublicPath)
    .borrow<&{NftReality.NftRealityCollectionPublic}>() {
        ids["NftReality"] = col.getIDs()
    }

    if let col = owner.getCapability(MatrixWorldAssetsNFT.collectionPublicPath)
    .borrow<&{NonFungibleToken.CollectionPublic}>() {
        ids["MatrixWorldAssetsNFT"] = col.getIDs()
    }
     
    if let col = owner.getCapability(RacingTime.CollectionPublicPath)
    .borrow<&{RacingTime.RacingTimeCollectionPublic}>() {
        ids["RacingTime"] = col.getIDs()
    }

    if let col = owner.getCapability(Momentables.CollectionPublicPath)
    .borrow<&{Momentables.MomentablesCollectionPublic}>() {
        ids["Momentables"] = col.getIDs()
    }

    if let col = owner.getCapability(GoatedGoats.CollectionPublicPath)
    .borrow<&{NonFungibleToken.CollectionPublic}>() {
        ids["GoatedGoats"] = col.getIDs()
    }

    if let col = owner.getCapability(GoatedGoatsTrait.CollectionPublicPath)
    .borrow<&{NonFungibleToken.CollectionPublic}>() {
        ids["GoatedGoatsTrait"] = col.getIDs()
    }
        
    if let col = owner.getCapability(DropzToken.CollectionPublicPath)
    .borrow<&{DropzToken.DropzTokenCollectionPublic}>() {
        ids["DropzToken"] = col.getIDs()
    }

    if let col = owner.getCapability(Necryptolis.CollectionPublicPath)
    .borrow<&{Necryptolis.NecryptolisCollectionPublic}>() {
        ids["Necryptolis"] = col.getIDs()
    }
    
    if let col = owner.getCapability(FLOAT.FLOATCollectionPublicPath)
    .borrow<&FLOAT.Collection{FLOAT.CollectionPublic}>() {
        ids["FLOAT"] = col.getIDs()
    }

    if let col = owner.getCapability(BreakingT_NFT.CollectionPublicPath)
    .borrow<&{BreakingT_NFT.BreakingT_NFTCollectionPublic}>() {
        ids["BreakingT_NFT"] = col.getIDs()
    }  

    if let col = owner.getCapability(Owners.CollectionPublicPath)
    .borrow<&{Owners.OwnersCollectionPublic}>() {
        ids["Owners"] = col.getIDs()
    }

    if let col = owner.getCapability(Metaverse.CollectionPublicPath)
    .borrow<&{Metaverse.MetaverseCollectionPublic}>() {
        ids["Metaverse"] = col.getIDs()
    }

    if let col = owner.getCapability(SwaychainNFT.CollectionPublicPath)
    .borrow<&{SwaychainNFT.SwaychainNFTCollectionPublic}>() {
        ids["Swaychain"] = col.getIDs()
    }
	
	if let col = owner.getCapability(/public/MyNFTCollection)
	.borrow<&{MyNFT.CollectionPublic}>() {
		ids["MyNFT"] = col.getIDs()
	}

    return ids
}
