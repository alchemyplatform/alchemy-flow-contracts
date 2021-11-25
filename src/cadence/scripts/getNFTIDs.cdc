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
import TFCItems from 0x81e95660ab5308e1

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
            ids["Shard"] = col.getIDs()
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
            ids["CaaPass"] = col.getIDs()
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
    if let col = owner.getCapability(TFCItems.CollectionPublicPath)
        .borrow<&{TFCItems.TFCItemsCollectionPublic}>(){
            ids["TFCItems"] = col.getIDs()
        }

    return ids
}
