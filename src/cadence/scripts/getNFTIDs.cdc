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


pub fun main(ownerAddress: Address): {String: [UInt64]} {
    let owner = getAccount(ownerAddress)
    let paths: {String: PublicPath} = {}

    paths["CNN"] = CNN_NFT.CollectionPublicPath
    paths["Gaia"] = Gaia.CollectionPublicPath
    paths["ChainmonstersRewards"] = /public/ChainmonstersRewardCollection
    paths["Beam"] = Beam.CollectionPublicPath
    paths["BlockleteGames_NFT"] = BlockleteGames_NFT.CollectionPublicPath
    paths["CricketMoments"] = CricketMoments.CollectionPublicPath
    paths["Everbloom"] = Everbloom.CollectionPublicPath
    paths["Shard"] = /public/EternalShardCollection
    paths["FantastecNFT"] = FantastecNFT.CollectionPublicPath
    paths["Vouchers"] = Vouchers.CollectionPublicPath
    paths["KOTD"] = KOTD.CollectionPublicPath
    paths["KlktnNFT"] = KlktnNFT.CollectionPublicPath
    paths["MusicBlock"] = MusicBlock.CollectionPublicPath
    paths["Mynft"] = Mynft.CollectionPublicPath
    paths["NyatheesOVO"] = NyatheesOVO.CollectionPublicPath
    paths["RaceDay_NFT"] = RaceDay_NFT.CollectionPublicPath
    paths["RareRooms_NFT"] = RareRooms_NFT.CollectionPublicPath
    paths["RCRDSHPNFT"] = RCRDSHPNFT.collectionPublicPath
    paths["SportsIconCollectible"] = SportsIconCollectible.CollectionPublicPath
    paths["StarlyCard"] = StarlyCard.CollectionPublicPath
    paths["CaaPass"] = CaaPass.CollectionPublicPath
    paths["TuneGO"] = TuneGO.CollectionPublicPath
    paths["MatrixWorldFlowFestNFT"] = MatrixWorldFlowFestNFT.CollectionPublicPath
    paths["TopShot"] = /public/MomentCollection
        
    return extractIDs(owner: owner, paths: paths)
}

pub fun extractIDs(owner: PublicAccount, paths: {String: PublicPath}): {String: [UInt64]} {
    let ids: {String: [UInt64]} = {}
    for name in paths.keys {
        let collection = owner
            .getCapability(paths[name]!)
            .borrow<&AnyResource{NonFungibleToken.CollectionPublic}>()
        
        if collection != nil {
            ids[name] = collection!.getIDs()
        }
    }

    return ids
}
