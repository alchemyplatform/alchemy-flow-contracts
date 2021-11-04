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

pub struct NFTCollection {
    pub let owner: Address
    pub let nfts: [NFTData]

    init(owner: Address) {
        self.owner = owner
        self.nfts = []
    }
}

pub struct NFTData {
    pub let contract: NFTContract
    pub let id: UInt64
    pub let uuid: UInt64?
    pub let title: String?
    pub let description: String?
    pub let external_domain_view_url: String?
    pub let media: NFTMedia?
    pub let alternate_media: [NFTMedia?]
    pub let metadata: {String: AnyStruct}

    init(
        contract: NFTContract, 
        id: UInt64, 
        uuid: UInt64?, 
        title: String?, 
        description: String?, 
        external_domain_view_url: String?, 
        media: NFTMedia?, 
        alternate_media: [NFTMedia?], 
        metadata: {String: AnyStruct}
    ) {
        self.contract = contract
        self.id = id
        self.uuid = uuid
        self.title = title
        self.description = description
        self.external_domain_view_url = external_domain_view_url
        self.media = media
        self.alternate_media = alternate_media
        self.metadata = metadata
    }
}

pub struct NFTContract {
    pub let name: String
    pub let address: Address
    pub let external_domain: String

    init(
        name: String, 
        address: Address, 
        external_domain: String
    ) {
        self.name = name
        self.address = address
        self.external_domain = external_domain
    }
}

pub struct NFTMedia {
    pub let uri: String?
    pub let mimetype: String?

    init(
        uri: String?, 
        mimetype: String?
    ) {
        self.uri = uri
        self.mimetype = mimetype
    }
}

pub fun main(ownerAddress: Address, ids: {String:[UInt64]}): [NFTData?] {
    let NFTs: [NFTData?] = []
    let owner = getAccount(ownerAddress)

    for key in ids.keys {
        for id in ids[key]! {
            var d: NFTData? = nil
            
            // note: unfortunately dictonairy containing functions is not 
            // working on mainnet for now so we have to fallback to switch  
            switch key {
                case "CNN": d = getCnnNFT(owner: owner, id: id)
                case "ChainmonstersRewards": d = getChainonsterRewardNFT(owner: owner, id: id)
                case "Gaia": d = getGaia(owner: owner, id: id)
                case "TopShot": d = getTopShot(owner: owner, id: id)
                case "MatrixWorldFlowFestNFT": d = getMatrixWorldFlowFest(owner: owner, id: id)
                case "StarlyCard": d = getStarlyCard(owner: owner, id: id)
                case "Shard": d = getShard(owner: owner, id: id)
                case "Mynft": d = getMynft(owner: owner, id: id)
                case "Vouchers": d = getVoucher(owner: owner, id: id)
                case "MusicBlock": d = getMusicBlock(owner: owner, id: id)
                case "NyatheesOVO": d = getNyatheesOVO(owner: owner, id: id)
                case "RaceDay_NFT": d = getRaceDay(owner: owner, id: id)
                case "FantastecNFT": d = getFantastecNFT(owner: owner, id: id)
                case "Everbloom": d = getEverbloom(owner: owner, id: id)
                default:
                    panic("adapter for NFT not found: ".concat(key))
            }

            NFTs.append(d)
        }
    }
    
    return NFTs
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/CNN_NFT
pub fun getCnnNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "CNN", address: 0x1, external_domain: "cnn.com")

    let col = owner.getCapability(CNN_NFT.CollectionPublicPath)
        .borrow<&{CNN_NFT.CNN_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCNN_NFT(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x93615d25d14fa337/contract/ChainmonstersRewards
pub fun getChainonsterRewardNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "ChainmonsterRewrads", address: 0x1, external_domain: "")

    let col = owner.getCapability(/public/ChainmonstersRewardCollection)
        .borrow<&{ChainmonstersRewards.ChainmonstersRewardCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowReward(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// Priority: High
// Test args: [{ "type": "Address", "value": "0x9eef2e4511390ce4" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Gaia" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1129" }] } }] }]
// https://flow-view-source.com/mainnet/account/0x8b148183c28ff88f/contract/Gaia
pub fun getGaia(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "Gaia", address: 0x8b148183c28ff88f, external_domain: "ballerz.xyz")

    let col = owner.getCapability(Gaia.CollectionPublicPath)
        .borrow<&{Gaia.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowGaiaNFT(id: id)
    if nft == nil { return nil }
    
    let metadata = Gaia.getTemplateMetaData(templateID: nft!.data.templateID)
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["uri"],
        media: NFTMedia(uri: metadata!["img"], mimetype: "image"),
        alternate_media: [],
        metadata: metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0x86b4a0010a71cfc3/contract/Beam
pub fun getBeam(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(Beam.CollectionPublicPath)
        .borrow<&{Beam.BeamCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/BlockleteGames_NFT
pub fun getBlockleteGames(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(BlockleteGames_NFT.CollectionPublicPath)
        .borrow<&{BlockleteGames_NFT.BlockleteGames_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowBlockleteGames_NFT(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x6d008a788fc27265/contract/Crave
pub fun getCrave(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(Crave.CollectionPublicPath)
        .borrow<&{Crave.CraveCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0xed398881d9bf40fb/contract/CricketMoments
pub fun getCricketMoments(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(CricketMoments.CollectionPublicPath)
        .borrow<&{CricketMoments.CricketMomentsCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCricketMoment(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// Priority: High
// Test: 
// https://flow-view-source.com/mainnet/account/0xe703f7fee6400754/contract/Everbloom
pub fun getEverbloom(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "Everbloom", address: 0xe703f7fee6400754, external_domain: "")

    let col = owner.getCapability(Everbloom.CollectionPublicPath)
        .borrow<&{Everbloom.PrintCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowPrint(id: id)
    if nft == nil { return nil }

    let art = nft!.data

    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// Priority: High
// Test: [{ "type": "Address", "value": "0x1f56a1e665826a52" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Shard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6014" }] } }] }]
// https://flow-view-source.com/mainnet/account/0x82b54037a8f180cf/contract/Shard
pub fun getShard(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "Shard", address: 0x82b54037a8f180cf, external_domain: "")

    let col = owner.getCapability(/public/EternalShardCollection)
        .borrow<&{Shard.ShardCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowShardNFT(id: id)
    if nft == nil { return nil }

    let clip = Shard.getClip(clipID: nft!.clipID)
    let clipMetadata = Shard.getClipMetadata(clipID: nft!.clipID)
    let momentMetadata = Shard.getMomentMetadata(momentID: clip!.momentID)
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: clipMetadata!["title"],
        description: "",
        external_domain_view_url: "",
        media: NFTMedia(uri: clipMetadata!["video_url"], mimetype: "video"),
        alternate_media: [],
        metadata: {
            "clip": clipMetadata!,
            "moment": momentMetadata!
        },
    )
}

// Priority: High
// Test: 
// https://flow-view-source.com/mainnet/account/0x2e1ee1e7a96826ce/contract/FantastecNFT
pub fun getFantastecNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "FantastecNFT", address: 0x2e1ee1e7a96826ce, external_domain: "")

    let col = owner.getCapability(FantastecNFT.CollectionPublicPath)
        .borrow<&{FantastecNFT.FantastecNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFantastecNFT(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: nft!.metadata!,
    )
}

// Priority: High
// Test: 
// https://flow-view-source.com/mainnet/account/0x444f5ea22c6ea12c/contract/Vouchers
pub fun getVoucher(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "Vouchers", address: 0x444f5ea22c6ea12c, external_domain: "")

    let col = owner.getCapability(Vouchers.CollectionPublicPath)
        .borrow<&{Vouchers.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowVoucher(id: id)
    if nft == nil { return nil }
    
    let metadata = nft!.getMetadata()
    if metadata == nil { return nil }

    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!.name,
        description: metadata!.description,
        external_domain_view_url: nil,
        media: NFTMedia(uri: metadata!.mediaURI, mimetype: metadata!.mediaType),
        alternate_media: [],
        metadata: {
            "mediaHash": metadata!.mediaURI,
            "mediaType": metadata!.mediaType,
            "mediaURI": metadata!.mediaURI,
            "name": metadata!.name,
            "description": metadata!.description,
            "typeID": nft!.typeID
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x23dddd854fcc8c6f/contract/KOTD
pub fun getKOTD(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(KOTD.CollectionPublicPath)
        .borrow<&{KOTD.NiftoryCollectibleCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0xabd6e80be7e9682c/contract/KlktnNFT
pub fun getKlktnNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(KlktnNFT.CollectionPublicPath)
        .borrow<&{KlktnNFT.KlktnNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowKlktnNFT(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// Priority: High
// Test: 
// https://flow-view-source.com/mainnet/account/0x5634aefcb76e7d8c/contract/MusicBlock
pub fun getMusicBlock(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "MusicBlock", address: 0x5634aefcb76e7d8c, external_domain: "melos.studio")

    let col = owner.getCapability(MusicBlock.CollectionPublicPath)
        .borrow<&{MusicBlock.MusicBlockCollectionPublic}>()
    if col == nil { return nil }

    let data = col!.getMusicBlockData(id: id)

    return NFTData(
        contract: contract, 
        id: id,
        uuid: nil,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {
            "creator": data.creator,
            "cpower": data.cpower,
            "cid": data.cid,
            "generation": data.generation
        },
    )
}

// Priority: High
// Test: [{ "type": "Address", "value": "0xf6fcbef550d97aa5" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Mynft" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "721" }] } }] }]
// https://flow-view-source.com/mainnet/account/0xf6fcbef550d97aa5/contract/Mynft
pub fun getMynft(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "Mynft", address: 0xf6fcbef550d97aa5, external_domain: "")

    let col = owner.getCapability(Mynft.CollectionPublicPath)
        .borrow<&{Mynft.MynftCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowArt(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.metadata!.name,
        description: nft!.metadata!.description,
        external_domain_view_url: "",
        media: NFTMedia(uri: nft!.metadata!.ipfsLink, mimetype: "image"),
        alternate_media: [],
        metadata: {
            "artist": nft!.metadata!.artist,
            "arLink": nft!.metadata!.arLink,
            "ipfsLink": nft!.metadata!.ipfsLink,
            "MD5Hash": nft!.metadata!.MD5Hash,
            "type": nft!.metadata!.type,
            "name": nft!.metadata!.name,
            "description": nft!.metadata!.description
        },
    )
}

// Priority: High
// Test: '[{ "type": "Address", "value": "0x1a281ada027d19dd" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "NyatheesOVO" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "6042" }] } }] }]
// https://flow-view-source.com/mainnet/account/0x75e0b6de94eb05d0/contract/NyatheesOVO
pub fun getNyatheesOVO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "NyatheesOVO", address: 0x75e0b6de94eb05d0, external_domain: "")

    let col = owner.getCapability(NyatheesOVO.CollectionPublicPath)
        .borrow<&{NyatheesOVO.NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowNFTItem(id: id)
    if nft == nil { return nil }
    
    let meta = nft!.getMetadata()

    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: meta["url"],
        media: nil,
        alternate_media: [],
        metadata: meta,
    )
}

// Priority: High
// Test: [{ "type": "Address", "value": "0x61c73078c27d29a8" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "RaceDay_NFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "14282" }] } }] }]
// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/RaceDay_NFT
pub fun getRaceDay(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "RaceDay_NFT", address: 0x329feb3ab062d289, external_domain: "")

    let col = owner.getCapability(RaceDay_NFT.CollectionPublicPath)
        .borrow<&{RaceDay_NFT.RaceDay_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowRaceDay_NFT(id: id)
    if nft == nil { return nil }
    
    let setMeta = RaceDay_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = RaceDay_NFT.getSeriesMetadata(
        seriesId: RaceDay_NFT.getSetSeriesId(setId: nft!.setId)!
    )

    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta["name"],
        description: setMeta["description"],
        external_domain_view_url: setMeta["external_url"],
        media: NFTMedia(uri: setMeta!["image"], mimetype: "image"),
        alternate_media: [
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "set": setMeta!,
            "series": seriesMeta!
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/RareRooms_NFT
pub fun getRareRooms(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(RareRooms_NFT.CollectionPublicPath)
        .borrow<&{RareRooms_NFT.RareRooms_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowRareRooms_NFT(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x6c3ff40b90b928ab/contract/RCRDSHPNFT
pub fun getRCRDSHPNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(RCRDSHPNFT.collectionPublicPath)
        .borrow<&{NonFungibleToken.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowNFT(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x8de96244f54db422/contract/SportsIconCollectible
pub fun getSportsIconCollectible(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(SportsIconCollectible.CollectionPublicPath)
        .borrow<&{SportsIconCollectible.CollectibleCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// Priority: High
// Test: [{ "type": "Address", "value": "0xd88dea66b28c8637" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "StarlyCard" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "752" }] } }] }]
// https://flow-view-source.com/mainnet/account/0x5b82f21c0edf76e3/contract/StarlyCard
pub fun getStarlyCard(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "StarlyCard", address: 0x5b82f21c0edf76e3, external_domain: "")

    let col = owner.getCapability(StarlyCard.CollectionPublicPath)
        .borrow<&{StarlyCard.StarlyCardCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowStarlyCard(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {
            "id": nft!.starlyID
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x98c9c2e548b84d31/contract/CaaPass
pub fun getCaaPass(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(CaaPass.CollectionPublicPath)
        .borrow<&{CaaPass.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCaaPass(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x0d9bc5af3fc0c2e3/contract/TuneGO
pub fun getTuneGO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(TuneGO.CollectionPublicPath)
        .borrow<&{TuneGO.TuneGOCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: {},
    )
}

// Priority: High
// Test args: [{ "type": "Address", "value": "0x5f14b7e68e0bc3c3" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "MatrixWorldFlowFestNFT" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "3296" }] } }] }]
// https://flow-view-source.com/mainnet/account/0x2d2750f240198f91/contract/MatrixWorldFlowFestNFT
pub fun getMatrixWorldFlowFest(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "MatrixWorldFlowFestNFT", address: 0x2d2750f240198f91, external_domain: "matrixworld.org")

    let col = owner.getCapability(MatrixWorldFlowFestNFT.CollectionPublicPath)
        .borrow<&{MatrixWorldFlowFestNFT.MatrixWorldFlowFestNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowVoucher(id: id)
    if nft == nil { return nil }
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.metadata.name,
        description: nft!.metadata.description,
        external_domain_view_url: "matrixworld.org",
        media: NFTMedia(uri: nft!.metadata.animationUrl, mimetype: "image"),
        alternate_media: [],
        metadata: {
            "type": nft!.metadata.type,
            "hash": nft!.metadata.hash
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x0b2a3299cc857e29/contract/TopShot
pub fun getTopShot(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(name: "", address: 0x1, external_domain: "")

    let col = owner.getCapability(/public/MomentCollection)
        .borrow<&{TopShot.MomentCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMoment(id: id)
    if nft == nil { return nil }
    
    let metadata = TopShot.getPlayMetaData(playID: nft!.data.playID)!
    
    return NFTData(
        contract: contract, 
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["FullName"],
        description: nil,
        external_domain_view_url: nil,
        media: nil,
        alternate_media: [],
        metadata: metadata,
    )
}
