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
import Domains from 0x233eb012d34b0070
import Eternal from 0xc38aea683c0c4d38
import GooberXContract from 0x34f2bf4a80bb0f69
import TFCItems from 0x81e95660ab5308e1
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
import ZeedzINO from 0xe1c34bb70fbb5357

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
    pub let token_uri: String?
    pub let media: [NFTMedia?]
    pub let metadata: {String: AnyStruct}

    init(
        contract: NFTContract,
        id: UInt64,
        uuid: UInt64?,
        title: String?,
        description: String?,
        external_domain_view_url: String?,
        token_uri: String?,
        media: [NFTMedia?],
        metadata: {String: AnyStruct}
    ) {
        self.contract = contract
        self.id = id
        self.uuid = uuid
        self.title = title
        self.description = description
        self.external_domain_view_url = external_domain_view_url
        self.token_uri = token_uri
        self.media = media
        self.metadata = metadata
    }
}

pub struct NFTContract {
    pub let name: String
    pub let address: Address
    pub let storage_path: String
    pub let public_path: String
    pub let public_collection_name: String
    pub let external_domain: String

    init(
        name: String,
        address: Address,
        storage_path: String,
        public_path: String,
        public_collection_name: String,
        external_domain: String
    ) {
        self.name = name
        self.address = address
        self.storage_path = storage_path
        self.public_path = public_path
        self.public_collection_name = public_collection_name
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
                case "ChainmonstersRewards": d = getChainmonstersRewardNFT(owner: owner, id: id)
                case "Gaia": d = getGaia(owner: owner, id: id)
                case "TopShot": d = getTopShot(owner: owner, id: id)
                case "MatrixWorldFlowFestNFT": d = getMatrixWorldFlowFest(owner: owner, id: id)
                case "StarlyCard": d = getStarlyCard(owner: owner, id: id)
                case "EternalShard": d = getEternalShard(owner: owner, id: id)
                case "Mynft": d = getMynft(owner: owner, id: id)
                case "Vouchers": d = getVoucher(owner: owner, id: id)
                case "MusicBlock": d = getMusicBlock(owner: owner, id: id)
                case "NyatheesOVO": d = getNyatheesOVO(owner: owner, id: id)
                case "RaceDay_NFT": d = getRaceDay(owner: owner, id: id)
                case "FantastecNFT": d = getFantastecNFT(owner: owner, id: id)
                case "Everbloom": d = getEverbloom(owner: owner, id: id)
                case "Domains": d = getFlownsDomain(owner: owner, id:id)
                case "EternalMoment": d = getEternalMoment(owner: owner, id: id)
                case "ThingFund": d = getCaaPass(owner: owner, id: id)
                case "TFCItems": d = getTFCItems(owner: owner, id: id)
                case "Gooberz": d = getGooberz(owner: owner, id: id)
                case "BiscuitsNGroovy": d = getBiscuitsNGroovy(owner: owner, id: id)
                case "GeniaceNFT": d = getGeniaceNFT(owner: owner, id: id)
                case "Xtingles": d = getXtinglesNFT(owner: owner, id: id)
                case "Beam": d = getBeam(owner: owner, id: id)
                case "KOTD": d = getKOTD(owner: owner, id: id)
                case "KlktnNFT": d = getKlktnNFT(owner: owner, id: id)
                case "RareRooms_NFT": d = getRareRooms(owner: owner, id: id)
                case "Crave": d = getCrave(owner: owner, id: id)
                case "CricketMoments": d = getCricketMoments(owner: owner, id: id)
                case "SportsIconCollectible": d = getSportsIconCollectible(owner: owner, id: id)
                case "InceptionAnimals": d = getInceptionAnimals(owner: owner, id: id)
                case "OneFootballCollectible": d = getOneFootballCollectible(owner: owner, id: id)
                case "TheFabricantMysteryBox_FF1": d = getTheFabricantMysteryBox_FF1(owner: owner, id: id)
                case "DieselNFT": d = getDieselNFT(owner: owner, id: id)
                case "MiamiNFT": d = getMiamiNFT(owner: owner, id: id)
                case "Bitku": d = getBitku(owner: owner, id: id)
                case "FlowFans": d = getFlowFansNFT(owner: owner, id: id)
                case "AllDay": d = getAllDay(owner: owner, id: id)
                case "PackNFT": d = getAllDayPackNFT(owner: owner, id: id)
                case "ItemNFT": d = getItemNFT(owner: owner, id: id)
                case "TheFabricantS1ItemNFT": d = getTheFabricantS1ItemNFT(owner: owner, id: id)
                case "ZeedzINO" : d = getZeedzINO(owner: owner, id: id)
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
    let contract = NFTContract(
        name: "CNN_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "CNN_NFT.CollectionStoragePath",
        public_path: "CNN_NFT.CollectionPublicPath",
        public_collection_name: "CNN_NFT.CNN_NFTCollectionPublic",
        external_domain: "cnn.com",
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x93615d25d14fa337/contract/ChainmonstersRewards
pub fun getChainmonstersRewardNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "ChainmonstersRewards",
        address: 0x93615d25d14fa337,
        storage_path: "/storage/ChainmonstersRewardCollection",
        public_path: "/public/ChainmonstersRewardCollection",
        public_collection_name: "ChainmonstersRewards.ChainmonstersRewardCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x8b148183c28ff88f/contract/Gaia
pub fun getGaia(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Gaia",
        address: 0x8b148183c28ff88f,
        storage_path: "Gaia.CollectionStoragePath",
        public_path: "Gaia.CollectionPublicPath",
        public_collection_name: "Gaia.CollectionPublic",
        external_domain: "ballerz.xyz"
    )

    let col = owner.getCapability(Gaia.CollectionPublicPath)
        .borrow<&{Gaia.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowGaiaNFT(id: id)
    if nft == nil { return nil }

    let metadata = Gaia.getTemplateMetaData(templateID: nft!.data.templateID)

    // Populate Gaia NFT data attributes into the metadata
    metadata!.insert(key: "setID", nft!.data.setID.toString())
    metadata!.insert(key: "templateID", nft!.data.templateID.toString())
    metadata!.insert(key: "mintNumber", nft!.data.mintNumber.toString())

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["uri"],
        token_uri: nil,
        media: [NFTMedia(uri: metadata!["img"], mimetype: "image")],
        metadata: metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0x86b4a0010a71cfc3/contract/Beam
pub fun getBeam(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Beam",
        address: 0x86b4a0010a71cfc3,
        storage_path: "Beam.CollectionStoragePath",
        public_path: "Beam.CollectionPublicPath",
        public_collection_name: "Beam.BeamCollectionPublic",
        external_domain: "frightclub.niftory.com"
    )

    let col = owner.getCapability(Beam.CollectionPublicPath)
        .borrow<&{Beam.BeamCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    let metadata = Beam.getCollectibleItemMetaData(collectibleItemID: nft!.data.collectibleItemID) 

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        let scheme = metadataUrl.slice(from: 0, upTo: 7)
        if scheme == "ipfs://" {
            mediaUrl = metadataUrl
        } else {
            mediaUrl = "ipfs://".concat(metadataUrl)
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["domainUrl"],
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeichtxzrocxo7ec5qybfxxlyod5bbymblitjwb2aalv2iyhe42pk4e/Frightclub.jpg", mimetype:"image/jpeg")],
        metadata: metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/BlockleteGames_NFT
pub fun getBlockleteGames(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "BlockleteGames_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "BlockleteGames_NFT.CollectionStoragePath",
        public_path: "BlockleteGames_NFT.CollectionPublicPath",
        public_collection_name: "BlockleteGames_NFT.BlockleteGames_NFTCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x6d008a788fc27265/contract/Crave
pub fun getCrave(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Crave",
        address: 0x6d008a788fc27265,
        storage_path: "Crave.CollectionStoragePath",
        public_path: "Crave.CollectionPublicPath",
        public_collection_name: "Crave.CraveCollectionPublic",
        external_domain: "crave.niftory.com"
    )

    let col = owner.getCapability(Crave.CollectionPublicPath)
        .borrow<&{Crave.CraveCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    let metadata = Crave.getCollectibleItemMetaData(collectibleItemID: nft!.data.collectibleItemID) 

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        let scheme = metadataUrl.slice(from: 0, upTo: 7)
        if scheme == "ipfs://" {
            mediaUrl = metadataUrl
        } else {
            mediaUrl = "ipfs://".concat(metadataUrl)
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["domainUrl"],
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeiedrlfjykj4svmaka7jdxnhr3osigtudyrhitxsf7ska5ljeiwlxa/Crave Critics Banner.jpg", mimetype:"image/jpeg")],
        metadata: metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0xed398881d9bf40fb/contract/CricketMoments
pub fun getCricketMoments(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(CricketMoments.CollectionPublicPath)
        .borrow<&{CricketMoments.CricketMomentsCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowCricketMoment(id: id){
        let contract = NFTContract(
            name: "CricketMoments",
            address: 0xed398881d9bf40fb,
            storage_path: "CricketMoments.CollectionStoragePath",
            public_path: "CricketMoments.CollectionPublicPath",
            public_collection_name: "CricketMoments.CricketMomentsCollectionPublic",
            external_domain: ""
        )

        let metadata = nft!.getMetadata()

        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: nil,
            description: metadata["description"],
            external_domain_view_url: nil,
            token_uri: "https://gateway.pinata.cloud/ipfs/".concat(metadata["ipfs"]!),
            media: [],
            metadata: metadata!,
        )
    }
    return nil
    
}

// https://flow-view-source.com/mainnet/account/0xe703f7fee6400754/contract/Everbloom
pub fun getEverbloom(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(Everbloom.CollectionPublicPath)
        .borrow<&{Everbloom.PrintCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowPrint(id: id) {

        let metadata = nft.data

        let contract = NFTContract(
            name: "Everbloom",
            address: 0xe703f7fee6400754,
            storage_path: "Everbloom.CollectionStoragePath",
            public_path: "Everbloom.CollectionPublicPath",
            public_collection_name: "Everbloom.PrintCollectionPublic",
            external_domain: ""
        )
        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: nil,
            description: nil,
            external_domain_view_url: nil,
            token_uri: nil,
            media: [],
            metadata: {},
        )
    }
    return nil 

}

// https://flow-view-source.com/mainnet/account/0xc38aea683c0c4d38/contract/Eternal
pub fun getEternalMoment(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Eternal",
        address: 0xc38aea683c0c4d38,
        storage_path: "/storage/EternalMomentCollection",
        public_path: "/public/EternalMomentCollection",
        public_collection_name: "Eternal.MomentCollectionPublic",
        external_domain: "https://eternal.gg/"
    )

    let col = owner.getCapability(/public/EternalMomentCollection)
        .borrow<&{Eternal.MomentCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMoment(id: id)
    if nft == nil { return nil }

    let metadata = Eternal.getPlayMetaData(playID: nft!.data.playID)
    if metadata == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["Title"],
        description: metadata!["Game"]!.concat(" - ").concat(metadata!["Influencer"]!),
        external_domain_view_url: "https://eternal.gg/moments/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(
            uri: "https://gateway.pinata.cloud/ipfs/".concat(metadata!["Hash"]!),
            mimetype: "video"
        )],
        metadata: metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0x82b54037a8f180cf/contract/Shard
pub fun getEternalShard(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Shard",
        address: 0x82b54037a8f180cf,
        storage_path: "/storage/EternalShardCollection",
        public_path: "/public/EternalShardCollection",
        public_collection_name: "Shard.ShardCollectionPublic",
        external_domain: "https://eternal.gg/"
    )

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
        description: "Deposit your Shard at Eternal.gg to merge them into a Crystal!",
        external_domain_view_url: "https://eternal.gg/shards/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: clipMetadata!["video_url"], mimetype: "video")],
        metadata: {
            "clip": clipMetadata!,
            "moment": momentMetadata!
        },
    )
}
   
// https://flow-view-source.com/mainnet/account/0x2e1ee1e7a96826ce/contract/FantastecNFT
pub fun getFantastecNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(FantastecNFT.CollectionPublicPath)
        .borrow<&{FantastecNFT.FantastecNFTCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowFantastecNFT(id: id){
        //if does not resolve to nil this code will be executed
        let contract = NFTContract(
            name: "FantastecNFT",
            address: 0x2e1ee1e7a96826ce,
            storage_path: "FantastecNFT.CollectionStoragePath",
            public_path: "FantastecNFT.CollectionPublicPath",
            public_collection_name: "FantastecNFT.FantastecNFTCollectionPublic",
            external_domain: ""
        )

        return NFTData(
            contract: contract,
            id: nft.id,
            uuid: nft.uuid,
            title: nft.metadata["title"],
            description: nft.metadata["description"],
            external_domain_view_url: nil,
            token_uri: nil,
            media: [NFTMedia(
                uri: nft.metadata["image"],
                mimetype: "image/png"
            )],
            metadata: nft.metadata,
        )
    }
    return nil
    
}

// https://flow-view-source.com/mainnet/account/0x444f5ea22c6ea12c/contract/Vouchers
pub fun getVoucher(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Vouchers",
        address: 0x444f5ea22c6ea12c,
        storage_path: "Vouchers.CollectionStoragePath",
        public_path: "Vouchers.CollectionPublicPath",
        public_collection_name: "Vouchers.CollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [NFTMedia(uri: metadata!.mediaURI, mimetype: metadata!.mediaType)],
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
    let contract = NFTContract(
        name: "KOTD",
        address: 0x23dddd854fcc8c6f,
        storage_path: "KOTD.CollectionStoragePath",
        public_path: "KOTD.CollectionPublicPath",
        public_collection_name: "KOTD.NiftoryCollectibleCollectionPublic",
        external_domain: "kotd.niftory.com"
    )

    let col = owner.getCapability(KOTD.CollectionPublicPath)
        .borrow<&{KOTD.NiftoryCollectibleCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }
    
    let metadata = KOTD.getCollectibleItemMetaData(collectibleItemID: nft!.data.collectibleItemID) 

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        let scheme = metadataUrl.slice(from: 0, upTo: 7)
        if scheme == "ipfs://" {
            mediaUrl = metadataUrl
        } else {
            mediaUrl = "ipfs://".concat(metadataUrl)
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["domainUrl"],
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeidy62mofvdpzr5gujq57kcpm27pciqx33pahxbfuwgzea646k2nay/s1_poster.jpg", mimetype:"image/jpeg")],
        metadata: metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0xabd6e80be7e9682c/contract/KlktnNFT
pub fun getKlktnNFT(owner: PublicAccount, id: UInt64): NFTData? {
    
    let col = owner.getCapability(KlktnNFT.CollectionPublicPath)
        .borrow<&{KlktnNFT.KlktnNFTCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowKlktnNFT(id: id){

        let metadata = nft!.getNFTMetadata()

            let contract = NFTContract(
            name: "KlktnNFT",
            address: 0xabd6e80be7e9682c,
            storage_path: "KlktnNFT.CollectionStoragePath",
            public_path: "KlktnNFT.CollectionPublicPath",
            public_collection_name: "KlktnNFT.KlktnNFTCollectionPublic",
            external_domain: ""
        )

        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: metadata["name"],
            description:metadata["description"],
            external_domain_view_url: nil,
            token_uri: nil,
            media: [NFTMedia(uri: metadata["media"], mimetype: metadata["mimeType"])],
            metadata: metadata,
        )
    }
    return nil
    
}

// https://flow-view-source.com/mainnet/account/0x5634aefcb76e7d8c/contract/MusicBlock
pub fun getMusicBlock(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(MusicBlock.CollectionPublicPath)
        .borrow<&{MusicBlock.MusicBlockCollectionPublic}>()
    if col == nil { return nil }

    let data = col!.getMusicBlockData(id: id)
    let nft = col!.borrowNFT(id: id) 
    let token_uri = col!.getUri(id: id) 
    
    let contract = NFTContract(
        name: "MusicBlock",
        address: 0x5634aefcb76e7d8c,
        storage_path: "MusicBlock.CollectionStoragePath",
        public_path: "MusicBlock.CollectionPublicPath",
        public_collection_name: "MusicBlock.MusicBlockCollectionPublic",
        external_domain: "melos.studio"
    )
    
    return NFTData(
        contract: contract,
        id: id,
        uuid: nft.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: token_uri,
        media: [],
        metadata: {
            "creator": data.creator,
            "cpower": data.cpower,
            "cid": data.cid,
            "generation": data.generation
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf6fcbef550d97aa5/contract/Mynft
pub fun getMynft(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Mynft",
        address: 0xf6fcbef550d97aa5,
        storage_path: "Mynft.CollectionStoragePath",
        public_path: "Mynft.CollectionPublicPath",
        public_collection_name: "Mynft.MynftCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [NFTMedia(uri: nft!.metadata!.ipfsLink, mimetype: nft!.metadata!.type)],
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

// https://flow-view-source.com/mainnet/account/0x75e0b6de94eb05d0/contract/NyatheesOVO
pub fun getNyatheesOVO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "NyatheesOVO",
        address: 0x75e0b6de94eb05d0,
        storage_path: "NyatheesOVO.CollectionStoragePath",
        public_path: "NyatheesOVO.CollectionPublicPath",
        public_collection_name: "NyatheesOVO.NFTCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(NyatheesOVO.CollectionPublicPath)
        .borrow<&{NyatheesOVO.NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowNFTItem(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: metadata["url"],
        token_uri: nil,
        media: [],
        metadata: metadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/RaceDay_NFT
pub fun getRaceDay(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "RaceDay_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "RaceDay_NFT.CollectionStoragePath",
        public_path: "RaceDay_NFT.CollectionPublicPath",
        public_collection_name: "RaceDay_NFT.RaceDay_NFTCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [NFTMedia(uri: setMeta!["image"], mimetype: "image"),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")],
        metadata: {
            "set": setMeta!,
            "series": seriesMeta!
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/RareRooms_NFT
pub fun getRareRooms(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "RareRooms_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "RareRooms_NFT.CollectionStoragePath",
        public_path: "RareRooms_NFT.CollectionPublicPath",
        public_collection_name: "RareRooms_NFT.RareRooms_NFTCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(RareRooms_NFT.CollectionPublicPath)
        .borrow<&{RareRooms_NFT.RareRooms_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowRareRooms_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = RareRooms_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = RareRooms_NFT.getSeriesMetadata(
        seriesId: RareRooms_NFT.getSetSeriesId(setId: nft!.setId)!
    )

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta["name"],
        description: setMeta["description"],
        external_domain_view_url: setMeta["external_url"],
        token_uri: nil,
        media: [NFTMedia(uri: setMeta!["image"], mimetype: "image"),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")],
        metadata: {
            "set": setMeta!,
            "series": seriesMeta!
        },
    )
    
}

// https://flow-view-source.com/mainnet/account/0x6c3ff40b90b928ab/contract/RCRDSHPNFT
pub fun getRCRDSHPNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "RCRDSHPNFT",
        address: 0x6c3ff40b90b928ab,
        storage_path: "RCRDSHPNFT.collectionStoragePath",
        public_path: "RCRDSHPNFT.collectionPublicPath",
        public_collection_name: "NonFungibleToken.CollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x8de96244f54db422/contract/SportsIconCollectible
pub fun getSportsIconCollectible(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "SportsIconCollectible",
        address: 0x8de96244f54db422,
        storage_path: "SportsIconCollectible.CollectionStoragePath",
        public_path: "SportsIconCollectible.CollectionPublicPath",
        public_collection_name: "SportsIconCollectible.CollectibleCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(SportsIconCollectible.CollectionPublicPath)
        .borrow<&{SportsIconCollectible.CollectibleCollectionPublic}>()
    if col == nil { return nil }

    let collectible = col!.borrowCollectible(id: id)
    let nft = col!.borrowNFT(id: id)
    if nft == nil { return nil }

    let setData = SportsIconCollectible.getSetMetadataForNFTByUUID(uuid: nft!.uuid)!
    let editionData = SportsIconCollectible.getCollectibleDataForNftByUUID(uuid: nft!.uuid)!
    let setMetadata = setData.getMetadata()

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMetadata["title"],
        description: setMetadata["description"],
        external_domain_view_url: "https://app.sportsicon.com/collectible/".concat(editionData.getSetID().toString()).concat("/").concat(editionData.getEditionNumber().toString()),
        token_uri: nil,
        media: [NFTMedia(uri: setMetadata!["contentURL"], mimetype: "video/mp4")],
        metadata: setMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x5b82f21c0edf76e3/contract/StarlyCard
pub fun getStarlyCard(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "StarlyCard",
        address: 0x5b82f21c0edf76e3,
        storage_path: "StarlyCard.CollectionStoragePath",
        public_path: "StarlyCard.CollectionPublicPath",
        public_collection_name: "StarlyCard.StarlyCardCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {
            "id": nft!.starlyID
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x98c9c2e548b84d31/contract/CaaPass
pub fun getCaaPass(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "CaaPass",
        address: 0x98c9c2e548b84d31,
        storage_path: "CaaPass.CollectionStoragePath",
        public_path: "CaaPass.CollectionPublicPath",
        public_collection_name: "CaaPass.CollectionPublic",
        external_domain: "thing.fund"
    )

    let col = owner.getCapability(CaaPass.CollectionPublicPath)
        .borrow<&{CaaPass.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCaaPass(id: id)
    if nft == nil { return nil }

    let metadata: CaaPass.Metadata? = nft!.getMetadata()
    if metadata == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!.name,
        description: metadata!.description,
        external_domain_view_url: "https://thing.fund/",
        token_uri: nil,
        media: [
            NFTMedia(uri: "ipfs://".concat(metadata!.mediaHash), mimetype: metadata!.mediaType)
        ],
        metadata: {
            "name": metadata!.name,
            "description": metadata!.description,
            "mediaType": metadata!.mediaType,
            "mediaHash": metadata!.mediaHash
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x0d9bc5af3fc0c2e3/contract/TuneGO
pub fun getTuneGO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "TuneGO",
        address: 0x0d9bc5af3fc0c2e3,
        storage_path: "TuneGO.CollectionStoragePath",
        public_path: "TuneGO.CollectionPublicPath",
        public_collection_name: "TuneGO.TuneGOCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x2d2750f240198f91/contract/MatrixWorldFlowFestNFT
pub fun getMatrixWorldFlowFest(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "MatrixWorldFlowFestNFT",
        address: 0x2d2750f240198f91,
        storage_path: "MatrixWorldFlowFestNFT.CollectionStoragePath",
        public_path: "MatrixWorldFlowFestNFT.CollectionPublicPath",
        public_collection_name: "MatrixWorldFlowFestNFT.MatrixWorldFlowFestNFTCollectionPublic",
        external_domain: "matrixworld.org"
    )

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
        token_uri: nil,
        media: [NFTMedia(uri: nft!.metadata.animationUrl, mimetype: "image")],
        metadata: {
            "type": nft!.metadata.type,
            "hash": nft!.metadata.hash
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x0b2a3299cc857e29/contract/TopShot
pub fun getTopShot(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "TopShot",
        address: 0x0b2a3299cc857e29,
        storage_path: "/storage/MomentCollection",
        public_path: "/public/MomentCollection",
        public_collection_name: "TopShot.MomentCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: metadata,
    )
}



// https://flow-view-source.com/mainnet/account/0x233eb012d34b0070/contract/Domains
pub fun getFlownsDomain(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "FlownsDomain",
        address: 0x233eb012d34b0070,
        storage_path: "Domains.CollectionStoragePath",
        public_path: "Domains.CollectionPublicPath",
        public_collection_name: "Domains.CollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(Domains.CollectionPublicPath)
        .borrow<&{Domains.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDomain(id: id)
    if nft == nil { return nil }

    let name = nft!.getDomainName()

    let URI = "https://www.flowns.org/api/fns?domain=".concat(name)
    let viewURL = "https://www.flowns.org/api/data?domain=".concat(name)

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: name,
        description: nil,
        external_domain_view_url: viewURL,
        token_uri: nil,
        media: [NFTMedia(uri: URI, mimetype: "image")],
        metadata: nft!.getAllTexts(),
    )
}

// https://flow-view-source.com/mainnet/account/0x81e95660ab5308e1/contract/TFCItems
pub fun getTFCItems(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "TFCItems",
        address: 0x81e95660ab5308e1,
        storage_path: "/storage/TFCItemsCollection",
        public_path: "/public/TFCItemsCollection",
        public_collection_name: "TFCItem.TFCItemsCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(TFCItems.CollectionPublicPath)!
    .borrow<&{TFCItems.TFCItemsCollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowTFCItem(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["Title"]!,
        description: nil,
        external_domain_view_url: "thefootballclub.com",
        token_uri: nil,
        media: [NFTMedia(uri: metadata["URL"]!, mimetype: "image")],
        metadata: metadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x34f2bf4a80bb0f69/contract/GooberXContract
pub fun getGooberz(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "GooberXContract",
        address: 0x34f2bf4a80bb0f69,
        storage_path: "GooberXContract.CollectionStoragePath",
        public_path: "GooberXContract.CollectionPublicPath",
        public_collection_name: "GooberXContract.GooberCollectionPublic",
        external_domain: "partymansion.io"
    )

    let col = owner.getCapability(GooberXContract.CollectionPublicPath)
        .borrow<&{GooberXContract.GooberCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowGoober(id: id)
    if nft == nil { return nil }

    let title = "Goober #".concat(nft!.id.toString())
    let description = "Goober living in the party mansion"
    let external_domain_view_url = "https://partymansion.io/gooberz/".concat(nft!.id.toString())
    
    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: title,
        description: description,
        external_domain_view_url: external_domain_view_url,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.data!.uri, mimetype: "image")],
        metadata: nft!.data!.metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0x7859c48816bfea3c/contract/BnGNFT
pub fun getBiscuitsNGroovy(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContract(
        name: "BnGNFT",
        address: 0x7859c48816bfea3c,
        storage_path: "BnGNFT.CollectionStoragePath",
        public_path: "BnGNFT.CollectionPublicPath",
        public_collection_name: "BnGNFT.BnGNFTCollectionPublic",
        external_domain: "www.bngroovy.com"
    )

    let col = owner.getCapability(BnGNFT.CollectionPublicPath)
        .borrow<&{BnGNFT.BnGNFTCollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowBnGNFT(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nil,
        title: nil,
        description: nil,
        external_domain_view_url: nft!.metadata!["metadata_url"],
        token_uri: nil,
        media: [],
        metadata: nft!.metadata!,
    )
}

// https://flow-view-source.com/mainnet/account/0xabda6627c70c7f52/contract/GeniaceNFT
pub fun getGeniaceNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Geniace",
        address: 0xabda6627c70c7f52,
        storage_path: "GeniaceNFT.CollectionStoragePath",
        public_path: "GeniaceNFT.CollectionPublicPath",
        public_collection_name: "GeniaceNFT.GeniaceNFTCollectionPublic",
        external_domain: "https://www.geniace.com/"
    )

    let col = owner.getCapability(GeniaceNFT.CollectionPublicPath)
        .borrow<&{GeniaceNFT.GeniaceNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowGeniaceNFT(id: id)
    if nft == nil { return nil }

    fun getNFTMedia(): [NFTMedia?] {
        if(nft!.metadata!.data!["mimetype"] == nil){
            return []
        }
        else{
            return [NFTMedia(
                uri: nft!.metadata!.imageUrl,
                mimetype: nft!.metadata!.data!["mimetype"]
            )]
        }
    }

    fun getRarity(): String? {
        switch nft!.metadata.rarity {
            case GeniaceNFT.Rarity.Collectible: return "Collectible"
            case GeniaceNFT.Rarity.Rare: return "Rare"
            case GeniaceNFT.Rarity.UltraRare: return "UltraRare"
            default: return ""
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.metadata!.name,
        description: nft!.metadata!.description,
        external_domain_view_url: "https://www.geniace.com/product/".concat(nft!.id.toString()),
        token_uri: nil,
        media: getNFTMedia(),
        metadata: {
            "celebrityName": nft!.metadata!.celebrityName,
            "artist": nft!.metadata!.artist,
            "rarity": getRarity(),
            "data": nft!.metadata!.data
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf5b0eb433389ac3f/contract/Collectible
pub fun getXtinglesNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Xtingles",
        address: 0xf5b0eb433389ac3f,
        storage_path: "Collectible.CollectionStoragePath",
        public_path: "Collectible.CollectionPublicPath",
        public_collection_name: "Collectible.CollectionPublicPath",
        external_domain: "https://www.xtingles.com/"
    )

    let col = owner.getCapability(Collectible.CollectionPublicPath)
        .borrow<&{Collectible.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nil,
        title: nft!.metadata!.name,
        description: nft!.metadata!.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.metadata!.link, mimetype: "video")],
        metadata: {
            "author": nft!.metadata!.author,
            "edition": nft!.metadata!.edition   
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x8ea44ab931cac762
pub fun getInceptionAnimals(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "InceptionAnimals",
        address: 0x8ea44ab931cac762,
        storage_path: "CryptoZooNFT.CollectionStoragePath",
        public_path: "CryptoZooNFT.CollectionPublicPath",
        public_collection_name: "CryptoZooNFT.CryptoZooNFTCollectionPublic",
        external_domain: "https://www.inceptionanimals.com/"
    )

    let col = owner.getCapability(CryptoZooNFT.CollectionPublicPath)
        .borrow<&{CryptoZooNFT.CryptoZooNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCryptoZooNFT(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.getNFTTemplate()!.description,
        external_domain_view_url: nil,
        token_uri: nft!.getNFTTemplate()!.getMetadata()["uri"]!,
        media: [NFTMedia(uri: nft!.getNFTTemplate()!.getMetadata()["uri"]!, mimetype: nft!.getNFTTemplate()!.getMetadata()["mimetype"]!)],
        metadata: nft!.getNFTTemplate()!.getMetadata()!,
    )
}

// https://flow-view-source.com/mainnet/account/0x6831760534292098/contract/OneFootballCollectible
pub fun getOneFootballCollectible(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "OneFootballCollectible",
        address: 0x6831760534292098,
        storage_path: "OneFootballCollectible.CollectionStoragePath",
        public_path: "OneFootballCollectible.CollectionPublicPath",
        public_collection_name: "OneFootballCollectible.OneFootballCollectibleCollectionPublic",
        external_domain: "http://xmas.onefootball.com/"
    )

    if let collection = owner
        .getCapability<&OneFootballCollectible.Collection{OneFootballCollectible.OneFootballCollectibleCollectionPublic}>(OneFootballCollectible.CollectionPublicPath)
            .borrow() {
        if let nft = collection.borrowOneFootballCollectible(id: id) {
            if let metadata = nft.getTemplate() {
                return NFTData(
                    contract: contract,
                    id: nft.id,
                    uuid: nft.uuid,
                    title: metadata.name,
                    description: metadata.description,
                    external_domain_view_url: "https://xmas.onefootball.com/".concat(owner.address.toString()),
                    token_uri: nil,
                    media: [
                        // media
                        NFTMedia(uri: "https://".concat(metadata.media).concat(".ipfs.dweb.link/"), mimetype: "video"),
                        // preview
                        NFTMedia(uri: "https://".concat(metadata.preview).concat(".ipfs.dweb.link/"), mimetype: "image")
                    ],
                    metadata: {
                        "of_id": metadata.data["of_id"],
                        "player_name": metadata.data["player_name"]
                    },
                )
            }
        }
    }
    return nil
}

// https://flow-view-source.com/mainnet/account/0xa0cbe021821c0965/contract/TheFabricantMysteryBox_FF1
pub fun getTheFabricantMysteryBox_FF1(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "TheFabricantMysteryBox_FF1",
        address: 0xa0cbe021821c0965,
        storage_path: "/storage/FabricantCollection001",
        public_path: "/public/FabricantCollection001",
        public_collection_name: "TheFabricantMysteryBox_FF1.FabricantCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(/public/FabricantCollection001)
        .borrow<&{TheFabricantMysteryBox_FF1.FabricantCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFabricant(id: id)!
    if nft == nil { return nil }

    let dataID = nft.fabricant.fabricantDataID
    let fabricantData = TheFabricantMysteryBox_FF1.getFabricantData(id: dataID)
    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: fabricantData.mainImage, mimetype: "image")],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x497153c597783bc3/contract/DieselNFT
pub fun getDieselNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "DieselNFT",
        address: 0x497153c597783bc3,
        storage_path: "/storage/DieselCollection001",
        public_path: "/public/DieselCollection001",
        public_collection_name: "DieselNFT.DieselCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(/public/DieselCollection001)
        .borrow<&{DieselNFT.DieselCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDiesel(id: id)!
    if nft == nil { return nil }

    let dataID = nft.diesel.dieselDataID
    let dieselData = DieselNFT.getDieselData(id: dataID)
    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: dieselData.name,
        description: dieselData.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: dieselData.mainVideo, mimetype: "video")],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0x429a19abea586a3e/contract/MiamiNFT
pub fun getMiamiNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "MiamiNFT",
        address: 0x429a19abea586a3e,
        storage_path: "/storage/MiamiCollection001",
        public_path: "/public/MiamiCollection001",
        public_collection_name: "MiamiNFT.MiamiCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(/public/MiamiCollection001)
        .borrow<&{MiamiNFT.MiamiCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMiami(id: id)!
    if nft == nil { return nil }

    let dataID = nft.miami.miamiDataID
    let miamiData = MiamiNFT.getMiamiData(id: dataID)
    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: miamiData.name,
        description: miamiData.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: miamiData.mainVideo, mimetype: "video")],
        metadata: {            
            "creator": miamiData.creator,
            "season": miamiData.season
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf61e40c19db2a9e2/contract/HaikuNFT
pub fun getBitku(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Bitku",
        address: 0xf61e40c19db2a9e2,
        storage_path: "/storage/BitkuCollection",
        public_path: "/public/BitkuCollection",
        public_collection_name: "HaikuNFT.HaikuCollectionPublic",
        external_domain: "bitku.art"
    )

    let col = owner.getCapability(HaikuNFT.HaikuCollectionPublicPath)
        .borrow<&{HaikuNFT.HaikuCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowHaiku(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nil,
        title: nil,
        description: nft!.text,
        external_domain_view_url: "https://bitku.art/#".concat(owner.address.toString()).concat("/").concat(nft!.id.toString()),
        token_uri: nil,
        media: [],
        metadata: {            
            "text": nft!.text
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x99fed1e8da4c3431/contract/FlowChinaBadge
pub fun getFlowFansNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "FlowFans",
        address: 0x99fed1e8da4c3431,
        storage_path: "/storage/FlowChinaBadgeCollection",
        public_path: "/public/FlowChinaBadgeCollection",
        public_collection_name: "FlowChinaBadge.FlowChinaBadgeCollectionPublic",
        external_domain: "https://twitter.com/FlowFansChina"
    )

    let col = owner.getCapability(/public/FlowChinaBadgeCollection)
        .borrow<&{FlowChinaBadge.FlowChinaBadgeCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFlowChinaBadge(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nft!.metadata,
        media: [],
        metadata: {}
    )
}

// https://flow-view-source.com/mainnet/account/0xe4cf4bdc1751c65d/contract/AllDay
pub fun getAllDay(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "AllDay",
        address: 0xe4cf4bdc1751c65d,
        storage_path: "AllDay.CollectionStoragePath",
        public_path: "AllDay.CollectionPublicPath",
        public_collection_name: "AllDay.MomentNFTCollectionPublic",
        external_domain: "https://nflallday.com/"
    )

    let col = owner.getCapability(AllDay.CollectionPublicPath)
        .borrow<&{AllDay.MomentNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMomentNFT(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nil,
        title: "Moment".concat(nft!.id.toString()).concat("-Edition").concat(nft!.editionID.toString()).concat("-SerialNumber").concat(nft!.serialNumber.toString()),
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0xe4cf4bdc1751c65d/contract/PackNFT
pub fun getAllDayPackNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "PackNFT",
        address: 0xe4cf4bdc1751c65d,
        storage_path: "PackNFT.CollectionStoragePath",
        public_path: "PackNFT.CollectionPublicPath",
        public_collection_name: "NonFungibleToken.CollectionPublic",
        external_domain: "https://nflallday.com/"
    )

    let col = owner.getCapability(PackNFT.CollectionPublicPath)
        .borrow<&{NonFungibleToken.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowNFT(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nil,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/mainnet/account/0xfc91de5e6566cc7c/contract/ItemNFT
pub fun getItemNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "ItemNFT",
        address: 0xfc91de5e6566cc7c,
        storage_path: "ItemNFT.CollectionStoragePath",
        public_path: "ItemNFT.CollectionPublicPath",
        public_collection_name: "ItemNFT.ItemCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(ItemNFT.CollectionPublicPath)
        .borrow<&{ItemNFT.ItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowItem(id: id)!
    if nft == nil { return nil }

    let itemDataID = nft.item.itemDataID
    let itemData = ItemNFT.getItemData(id: itemDataID)

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: itemData.mainImage, mimetype: "image"),
                NFTMedia(uri: itemData.images[0], mimetype: "image"),
                NFTMedia(uri: itemData.images[1], mimetype: "image"),
                NFTMedia(uri: itemData.images[2], mimetype: "image"),
                NFTMedia(uri: itemData.images[3], mimetype: "image")],
        metadata: {
            "name": nft!.name
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x9e03b1f871b3513/contract/TheFabricantS1ItemNFT
pub fun getTheFabricantS1ItemNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "TheFabricantS1ItemNFT",
        address: 0x9e03b1f871b3513,
        storage_path: "TheFabricantS1ItemNFT.CollectionStoragePath",
        public_path: "TheFabricantS1ItemNFT.CollectionPublicPath",
        public_collection_name: "TheFabricantS1ItemNFT.ItemCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(TheFabricantS1ItemNFT.CollectionPublicPath)
        .borrow<&{TheFabricantS1ItemNFT.ItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowItem(id: id)!
    if nft == nil { return nil }

    let itemDataID = nft.item.itemDataID
    let itemData = TheFabricantS1ItemNFT.getItemData(id: itemDataID)
    let itemMetadata = itemData.getMetadata()

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: itemMetadata["itemVideo"]!.metadataValue, mimetype: "video"),
                NFTMedia(uri: itemMetadata["itemImage"]!.metadataValue, mimetype: "image")],
        metadata: {
            "name": nft!.name, 
            "primaryColor": itemMetadata["primaryColor"]!.metadataValue,
            "secondaryColor": itemMetadata["secondaryColor"]!.metadataValue,
            "coCreator": itemData.coCreator,
            "season": itemMetadata["season"]!.metadataValue
        }
    )
}

// https://flow-view-source.com/mainnet/account/0xe1c34bb70fbb5357/contract/ZeedzINO
pub fun getZeedzINO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "ZeedzINO",
        address: 0xe1c34bb70fbb5357,
        storage_path: "/storage/ZeedzINOCollection",
        public_path: "/public/ZeedzINOCollection",
        public_collection_name: "ZeedzINO.ZeedzCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(/public/ZeedzINOCollection)
        .borrow<&{ZeedzINO.ZeedzCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowZeedle(id: id)!
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.description,
        external_domain_view_url: "https:/www.zeedz.io",
        token_uri: nil,
        media: [NFTMedia(uri: nft!.imageURI, mimetype: "image")],
        metadata: {            
            "typeID": nft!.typeID,
            "evoultionStage": nft!.evolutionStage,
            "serialNumber": nft!.serialNumber,
            "edition": nft!.edition,
            "editionCap": nft!.editionCap,
            "rarity": nft!.rarity,
            "carbonOffset": nft!.carbonOffset
        },
    )
}