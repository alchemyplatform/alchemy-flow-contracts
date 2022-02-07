import NonFungibleToken from 0x631e88ae7f1d7c20
import Gaia from 0xc523a8bbf10fc4a3
import Beam from 0x6085ae87e78e1433
import ChainmonstersRewards from 0x75783e3c937304a8
import Crave from 0x6085ae87e78e1433
import CricketMoments from 0xb45e7992680a0f7f
import Everbloom from 0xf30d2f642de8c895
import Shard from 0x7ff5f9ac593c3ee0
import FantastecNFT from 0x7b4fab78fbddc57e
import Vouchers from 0xe94a6e229293f196
import KOTD from 0x6085ae87e78e1433
import KlktnNFT from 0x336895dbe44c4b44
import MusicBlock from 0xeb3241ad7d7881db
import Mynft from 0x1eced429f2012ef0
import NyatheesOVO from 0xacf3dfa413e00f9f
import RCRDSHPNFT from 0x95d41a94b49a1ed1
import SportsIconCollectible from 0xc2824327396d3a39
import StarlyCard from 0x697d72a988a77070
import CaaPass from 0xa8b1239250f8d342
import TuneGO from 0x2b0150231c047a8c
import MatrixWorldFlowFestNFT from 0xe2f1b000e0203c1d
import TopShot from 0x877931736ee77cff
import Domains from 0xb05b2abb42335e88
import Eternal from 0x8da9b78f32f3ef50
import GooberXContract from 0x9be1ec5be8738e13
import TFCItems from 0x91a6217c3b70cae8
import BnGNFTContract from 0xf7ebe30e2e33b1f2
import GeniaceNFT from 0x99eb28310626e56a
import Collectible from 0x85080f371da20cc1
import CryptoZooNFT from 0xd60702f03bcafd46
import OneFootballCollectible from 0x01984fb4ca279d9a
import TheFabricantMysteryBox_FF1 from 0x716db717f9240d8a
import DieselNFT from 0x716db717f9240d8a
import MiamiNFT from 0x716db717f9240d8a
import HaikuNFT from 0x824f612f78d34250
import FlowChinaBadge from 0xb83e682ece5c8a50
import AllDay from 0x4dfd62c88d1b6462
import PackNFT from 0x4dfd62c88d1b6462
import ItemNFT from 0x716db717f9240d8a
import TheFabricantS1ItemNFT from 0x716db717f9240d8a
import ZeedzINO from 0x2dda9145001182e0

pub fun main(ownerAddress: Address): {String: [UInt64]} {
    let owner = getAccount(ownerAddress)
    let ids: {String: [UInt64]} = {}

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
        ids["CryptoZooNFT"] = col.getIDs()
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

    if let col = owner.getCapability(ZeedzINO.CollectionPublicPath)
    .borrow<&{ZeedzINO.ZeedzCollectionPublic}>() {
        ids["ZeedzINO"] = col.getIDs()
    }

    return ids
}
