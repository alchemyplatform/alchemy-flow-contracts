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
import MintStoreItem from 0x985d410b577fd4a1
import TFCItems from 0x91a6217c3b70cae8
import GeniaceNFT from 0x99eb28310626e56a
import Collectible from 0x85080f371da20cc1
import CryptoZooNFT from 0xd60702f03bcafd46
import TheFabricantMysteryBox_FF1 from 0x716db717f9240d8a
import DieselNFT from 0x716db717f9240d8a
import HaikuNFT from 0x824f612f78d34250
import FlowChinaBadge from 0xb83e682ece5c8a50
import AllDay from 0x4dfd62c88d1b6462
import PackNFT from 0x4dfd62c88d1b6462
import ItemNFT from 0x716db717f9240d8a
import TheFabricantS1ItemNFT from 0x716db717f9240d8a
import ZeedzINO from 0x2dda9145001182e0
import Kicks from 0xe861e151d3556d70
import BarterYardPackNFT from 0x4300fc3a11778a9a
import MetadataViews from 0x631e88ae7f1d7c20
import DayNFT from 0x0b7f00d13cd033bd
import NFTContract from 0xed15722048e03cea
import NowggNFT from 0x1a3e64df3663edd3
import GogoroCollectible from 0x5fc35f03a6f33561
import YahooCollectible from 0x5d50ce3fd080edce
import ARTIFACTPack from 0xd6b5d6d271a2b544
import ARTIFACT from 0xd6b5d6d271a2b544
import NftReality from 0xa3222e7505186595
import MatrixWorldAssetsNFT from 0x95702b3642af3d0c

pub struct NFTCollection {
    pub let owner: Address
    pub let nfts: [NFTData]

    init(owner: Address) {
        self.owner = owner
        self.nfts = []
    }
}

pub struct NFTData {
    pub let contract: NFTContractData
    pub let id: UInt64
    pub let uuid: UInt64?
    pub let title: String?
    pub let description: String?
    pub let external_domain_view_url: String?
    pub let token_uri: String?
    pub let media: [NFTMedia?]
    pub let metadata: {String: AnyStruct}

    init(
        contract: NFTContractData,
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

pub struct NFTContractData {
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

            switch key {
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
                case "FantastecNFT": d = getFantastecNFT(owner: owner, id: id)
                case "Everbloom": d = getEverbloom(owner: owner, id: id)
                case "Domains": d = getFlownsDomain(owner: owner, id:id)
                case "EternalMoment": d = getEternalMoment(owner: owner, id: id)
                case "TFCItems": d = getTFCItems(owner: owner, id: id)
                case "ThingFund": d = getCaaPass(owner: owner, id: id)
                case "Gooberz": d = getGooberz(owner: owner, id: id)
                case "MintStoreItem": d = getMintStoreItem(owner: owner, id: id)
                case "GeniaceNFT": d = getGeniaceNFT(owner: owner, id: id)
                case "Xtingles": d = getXtinglesNFT(owner: owner, id: id)
                case "Beam": d = getBeam(owner: owner, id: id)
                case "KOTD": d = getKOTD(owner: owner, id: id)
                case "Crave": d = getCrave(owner: owner, id: id)
                case "InceptionAnimals": d = getInceptionAnimals(owner: owner, id: id)
                case "TheFabricantMysteryBox_FF1": d = getTheFabricantMysteryBox_FF1(owner: owner, id: id)
                case "DieselNFT": d = getDieselNFT(owner: owner, id: id)
                case "FlowFans": d = getFlowFansNFT(owner: owner, id: id)
                case "AllDay": d = getAllDay(owner: owner, id: id)
                case "PackNFT": d = getAllDayPackNFT(owner: owner, id: id)
                case "ItemNFT": d = getItemNFT(owner: owner, id: id)
                case "TheFabricantS1ItemNFT": d = getTheFabricantS1ItemNFT(owner: owner, id: id)
                case "ZeedzINO" : d = getZeedzINO(owner: owner, id: id)
                case "Kicks" : d = getKicksSneaker(owner: owner, id: id)
                case "BarterYardPack": d = getBarterYardPack(owner: owner, id: id)
                case "DayNFT": d = getDayNFT(owner: owner, id: id)
                case "NFTContract": d = getNFTContract(owner: owner, id: id)
                case "NowggNFT": d = getNowggNFT(owner: owner, id: id)
                case "GogoroCollectible": d = getGogoroCollectibleNFT(owner: owner, id: id)
                case "YahooCollectible": d = getYahooCollectibleNFT(owner: owner, id: id)
                case "ARTIFACTPack": d = getARTIFACTPack(owner: owner, id: id)                
                case "ARTIFACT": d = getARTIFACT(owner: owner, id: id)
                case "NftReality": d = getNftRealityNFT(owner: owner, id: id)
                case "MatrixWorldAssetsNFT": d = getNftMatrixWorldAssetsNFT(owner: owner, id: id)

                default:
                    panic("adapter for NFT not found: ".concat(key))
            }
            NFTs.append(d)
        }
    }

    return NFTs
}

// https://flow-view-source.com/testnet/account/0x75783e3c937304a8/contract/ChainmonstersRewards
pub fun getChainmonstersRewardNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0xc523a8bbf10fc4a3/contract/Gaia
pub fun getGaia(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

    let nft = col!.borrowGaiaAsset(id: id)
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

// https://flow-view-source.com/testnet/account/0x6085ae87e78e1433/contract/Beam
pub fun getBeam(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Beam",
        address: 0x6085ae87e78e1433,
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
        let ipfsScheme = "ipfs://"
        let httpsScheme = "https://"
        let ipfsPrefix = metadataUrl.slice(from: 0, upTo: ipfsScheme.length)
        let httpsPrefix = metadataUrl.slice(from: 0, upTo: httpsScheme.length)
        if ipfsPrefix == ipfsScheme || httpsPrefix == httpsScheme {
            mediaUrl = metadataUrl
        } else {
            mediaUrl = ipfsPrefix.concat(metadataUrl)
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

// https://flow-view-source.com/testnet/account/0x6085ae87e78e1433/contract/Crave
pub fun getCrave(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Crave",
        address: 0x6085ae87e78e1433,
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
        let ipfsScheme = "ipfs://"
        let httpsScheme = "https://"
        let ipfsPrefix = metadataUrl.slice(from: 0, upTo: ipfsScheme.length)
        let httpsPrefix = metadataUrl.slice(from: 0, upTo: httpsScheme.length)
        if ipfsPrefix == ipfsScheme || httpsPrefix == httpsScheme {
            mediaUrl = metadataUrl
        } else {
            mediaUrl = ipfsPrefix.concat(metadataUrl)
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
// https://flow-view-source.com/testnet/account/0xb45e7992680a0f7f/contract/CricketMoments
pub fun getCricketMoments(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "CricketMoments",
        address: 0xed398881d9bf40fb,
        storage_path: "CricketMoments.CollectionStoragePath",
        public_path: "CricketMoments.CollectionPublicPath",
        public_collection_name: "CricketMoments.CricketMomentsCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/testnet/account/0xf30d2f642de8c895/contract/Everbloom
pub fun getEverbloom(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Everbloom",
        address: 0xe703f7fee6400754,
        storage_path: "Everbloom.CollectionStoragePath",
        public_path: "Everbloom.CollectionPublicPath",
        public_collection_name: "Everbloom.PrintCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/testnet/account/0x8da9b78f32f3ef50/contract/Eternal
pub fun getEternalMoment(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x7ff5f9ac593c3ee0/contract/Shard
pub fun getEternalShard(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x7b4fab78fbddc57e/contract/FantastecNFT
pub fun getFantastecNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "FantastecNFT",
        address: 0x2e1ee1e7a96826ce,
        storage_path: "FantastecNFT.CollectionStoragePath",
        public_path: "FantastecNFT.CollectionPublicPath",
        public_collection_name: "FantastecNFT.FantastecNFTCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: nft!.metadata!,
    )
}

// https://flow-view-source.com/testnet/account/0xe94a6e229293f196/contract/Vouchers
pub fun getVoucher(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x6085ae87e78e1433/contract/KOTD
pub fun getKOTD(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "KOTD",
        address: 0x6085ae87e78e1433,
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
        let ipfsScheme = "ipfs://"
        let httpsScheme = "https://"
        let ipfsPrefix = metadataUrl.slice(from: 0, upTo: ipfsScheme.length)
        let httpsPrefix = metadataUrl.slice(from: 0, upTo: httpsScheme.length)
        if ipfsPrefix == ipfsScheme || httpsPrefix == httpsScheme {
            mediaUrl = metadataUrl
        } else {
            mediaUrl = ipfsPrefix.concat(metadataUrl)
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

// https://flow-view-source.com/testnet/account/0x336895dbe44c4b44/contract/KlktnNFT
pub fun getKlktnNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "KlktnNFT",
        address: 0xabd6e80be7e9682c,
        storage_path: "KlktnNFT.CollectionStoragePath",
        public_path: "KlktnNFT.CollectionPublicPath",
        public_collection_name: "KlktnNFT.KlktnNFTCollectionPublic",
        external_domain: ""
    )

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
        token_uri: nil,
        media: [],
        metadata: {},
    )
}

// https://flow-view-source.com/testnet/account/0xeb3241ad7d7881db/contract/MusicBlock
pub fun getMusicBlock(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "MusicBlock",
        address: 0x5634aefcb76e7d8c,
        storage_path: "MusicBlock.CollectionStoragePath",
        public_path: "MusicBlock.CollectionPublicPath",
        public_collection_name: "MusicBlock.MusicBlockCollectionPublic",
        external_domain: "melos.studio"
    )

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
        token_uri: nil,
        media: [],
        metadata: {
            "creator": data.creator,
            "cpower": data.cpower,
            "cid": data.cid,
            "generation": data.generation
        },
    )
}

// https://flow-view-source.com/testnet/account/0x1eced429f2012ef0/contract/Mynft
pub fun getMynft(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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
        media: [NFTMedia(uri: nft!.metadata!.ipfsLink, mimetype: "image")],
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

// https://flow-view-source.com/testnet/account/0xacf3dfa413e00f9f/contract/NyatheesOVO
pub fun getNyatheesOVO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

    let meta = nft!.getMetadata()

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: meta["url"],
        token_uri: nil,
        media: [],
        metadata: meta,
    )
}

// https://flow-view-source.com/testnet/account/0x95d41a94b49a1ed1/contract/RCRDSHPNFT
pub fun getRCRDSHPNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0xc2824327396d3a39/contract/SportsIconCollectible
pub fun getSportsIconCollectible(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x697d72a988a77070/contract/StarlyCard
pub fun getStarlyCard(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0xa8b1239250f8d342/contract/CaaPass
pub fun getCaaPass(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x2b0150231c047a8c/contract/TuneGO
pub fun getTuneGO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0xe2f1b000e0203c1d/contract/MatrixWorldFlowFestNFT
pub fun getMatrixWorldFlowFest(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x877931736ee77cff/contract/TopShot
pub fun getTopShot(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TopShot",
        address: 0x877931736ee77cff,
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

// https://flow-view-source.com/testnet/account/0xb05b2abb42335e88/contract/Domains
pub fun getFlownsDomain(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x91a6217c3b70cae8/contract/TFCItems
pub fun getTFCItems(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x9be1ec5be8738e13/contract/GooberXContract
pub fun getGooberz(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0x99eb28310626e56a/contract/GeniaceNFT
pub fun getGeniaceNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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
        external_domain_view_url: "https://geniace-devtoprod.devtomaster.com/product/".concat(nft!.id.toString()),
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

// https://flow-view-source.com/testnet/account/0x85080f371da20cc1/contract/Collectible
pub fun getXtinglesNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

// https://flow-view-source.com/testnet/account/0xd60702f03bcafd46
pub fun getInceptionAnimals(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "InceptionAnimals",
        address: 0xd60702f03bcafd46,
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

// https://flow-view-source.com/testnet/account/0x716db717f9240d8a/contract/TheFabricantMysteryBox_FF1
pub fun getTheFabricantMysteryBox_FF1(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TheFabricantMysteryBox_FF1",
        address: 0x716db717f9240d8a,
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

// https://flow-view-source.com/testnet/account/0x716db717f9240d8a/contract/DieselNFT
pub fun getDieselNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DieselNFT",
        address: 0x716db717f9240d8a,
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

// https://flow-view-source.com/testnet/account/0x824f612f78d34250/contract/HaikuNFT
pub fun getBitku(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Bitku",
        address: 0x824f612f78d34250,
        storage_path: "/storage/BitkuCollection",
        public_path: "/public/BitkuCollection",
        public_collection_name: "HaikuNFT.HaikuCollectionPublic",
        external_domain: "testnet.bitku.art"
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
        external_domain_view_url: "https://testnet.bitku.art/#".concat(owner.address.toString()).concat("/").concat(nft!.id.toString()),
        token_uri: nil,
        media: [],
        metadata: {
            "text": nft!.text
        },
    )
}

// https://flow-view-source.com/testnet/account/0xb83e682ece5c8a50/contract/FlowChinaBadge
pub fun getFlowFansNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "FlowFans",
        address: 0xb83e682ece5c8a50,
        storage_path: "/storage/FlowChinaBadgeCollection",
        public_path: "/public/FlowChinaBadgeCollection",
        public_collection_name: "FlowChinaBadge.FlowChinaBadgeCollectionPublic",
        external_domain: "https://twitter.com/FlowFansChina"
    )

    let col = owner.getCapability(/public/FlowChinaBadgeCollection)
        .borrow<&{FlowChinaBadge.FlowChinaBadgeCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFlowChinaBadge(id: id)!
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

// https://flow-view-source.com/testnet/account/0x4dfd62c88d1b6462/contract/AllDay
pub fun getAllDay(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "AllDay",
        address: 0x4dfd62c88d1b6462,
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

// https://flow-view-source.com/testnet/account/0x4dfd62c88d1b6462/contract/PackNFT
pub fun getAllDayPackNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "PackNFT",
        address: 0x4dfd62c88d1b6462,
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

// https://flow-view-source.com/testnet/account/0x716db717f9240d8a/contract/ItemNFT
pub fun getItemNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ItemNFT",
        address: 0x716db717f9240d8a,
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

// https://flow-view-source.com/testnet/account/0x716db717f9240d8a/contract/TheFabricantS1ItemNFT
pub fun getTheFabricantS1ItemNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TheFabricantS1ItemNFT",
        address: 0x716db717f9240d8a,
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

// https://flow-view-source.com/testnet/account/0x2dda9145001182e0/contract/ZeedzINO
pub fun getZeedzINO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ZeedzINO",
        address: 0x2dda9145001182e0,
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
        media: [NFTMedia(uri: "https://zeedz.mypinata.cloud/ipfs/".concat(nft!.imageURI), mimetype: "image")],
        metadata: {
            "typeID": nft!.typeID,
            "evoultionStage": nft!.evolutionStage,
            "serialNumber": nft!.serialNumber,
            "editionNumber": nft!.edition,
            "editionCount": nft!.editionCap,
            "rarity": nft!.rarity,
            "carbonOffset": nft!.carbonOffset
        },
    )
}

// https://flow-view-source.com/testnet/account/0xe861e151d3556d70/contract/Kicks
pub fun getKicksSneaker(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ClosedSrc - NFTLX",
        address: 0xe861e151d3556d70,
        storage_path: "Kicks.CollectionStoragePath",
        public_path: "Kicks.CollectionPublicPath",
        public_collection_name: "Kicks.KicksCollectionPublic",
        external_domain: "https://www.nftlx.io/closedSrc"
    )

    let col = owner.getCapability(Kicks.CollectionPublicPath)
        .borrow<&{Kicks.KicksCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowSneaker(id: id)
    if nft == nil { return nil }

    var metadata = nft!.getMetadata()
    if (!metadata.containsKey("editionNumber")) { metadata["editionNumber"] = nft!.instanceID }
    if (!metadata.containsKey("editionCount")) { metadata["editionCount"] = nft!.getBlueprint().numberMinted }
    if (!metadata.containsKey("royaltyAddress")) { metadata["royaltyAddress"] = "0xe861e151d3556d70" }
    if (!metadata.containsKey("royaltyPercentage")) { metadata["royaltyPercentage"] = "5" }
    var media: [NFTMedia] = []

    if let mediaValue = metadata["media"] {
        if let supportedMedia = mediaValue as? {String: [String]} {
            for mediaType in supportedMedia.keys {
                for mediaURI in supportedMedia[mediaType]! {
                    media.append(NFTMedia(uri: mediaURI, mimetype: mediaType))
                }
            }
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name(),
        description: nft!.description(),
        external_domain_view_url: "https://www.nftlx.io/nft/".concat(nft!.id.toString()),
        token_uri: nil,
        media: media,
        metadata: metadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x20187093790b9aef/contract/MintStoreItem
// https://flow-view-source.com/testnet/account/0x985d410b577fd4a1/contract/MintStoreItem
pub fun getMintStoreItem(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "MintStoreItem",
        address: 0x985d410b577fd4a1,
        storage_path: "MintStoreItem.CollectionStoragePath",
        public_path: "MintStoreItem.CollectionPublicPath",
        public_collection_name: "MintStoreItem.MintStoreItemCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(MintStoreItem.CollectionPublicPath)
        .borrow<&{MintStoreItem.MintStoreItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMintStoreItem(id: id)
    if nft == nil { return nil }

    let editionData = MintStoreItem.EditionData(editionID: nft!.data.editionID)!
    let description = editionData!.metadata["description"]!;
    let merchantName = MintStoreItem.getMerchant(merchantID:nft!.data.merchantID)!

    let editionMetadata: {String: AnyStruct} = {
           "editionID": editionData!.editionID,
            "numberOfItemsMinted": editionData!.numberOfItemsMinted,
            "printingLimit": editionData!.printingLimit!,
            "editionNumber": nft!.data.editionNumber
    }

    let merchantData: {String: AnyStruct} = {
        "merchantID": nft!.data.merchantID,
        "merchantName": merchantName
    }


    let metadata: {String: AnyStruct} = {
        "merchant": merchantData,
        "edition": editionMetadata,
        "nft": editionData!.metadata
    }

     return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: editionData.name,
        description: description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: metadata,
    )
}

pub fun getBarterYardPack(owner: PublicAccount, id: UInt64): NFTData? {
  let contract = NFTContractData(
        name: "BarterYardPack",
        address: 0xa95b021cf8a30d80,
        storage_path: "BarterYardPackNFT.CollectionStoragePath",
        public_path: "BarterYardPackNFT.CollectionPublicPath",
        public_collection_name: "BarterYardPackNFT.BarterYardPackNFTCollectionPublic",
        external_domain: "https://barteryard.club"
    )

  let collection = owner.getCapability(BarterYardPackNFT.CollectionPublicPath)
        .borrow<&{ BarterYardPackNFT.BarterYardPackNFTCollectionPublic }>()!
  if collection == nil { return nil }

  let nft = collection.borrowBarterYardPackNFT(id: id)!
      // Get the basic display information for this NFT
  let view = nft.resolveView(Type<MetadataViews.Display>())!
  let display = view as! MetadataViews.Display
  let ipfsFile = display.thumbnail as! MetadataViews.IPFSFile
  let packPartView = nft.resolveView(Type<BarterYardPackNFT.PackMetadataDisplay>())!
  let packMetadata = packPartView as! BarterYardPackNFT.PackMetadataDisplay
  let edition = packMetadata.edition
  return NFTData(
    contract: contract,
    id: id,
    uuid: nil,
    title: display.name.concat(" #").concat(edition.toString()),
    description: display.description,
    external_domain_view_url: "https://barteryard.club/nft/".concat(id.toString()),
    token_uri: nil,
    media: [NFTMedia(uri: "https://ipfs.io/ipfs/".concat(ipfsFile.cid), mimetype: "image")],
    metadata: {
      "pack": display.name
    },
  )
}

// https://flow-view-source.com/testnet/account/0x0b7f00d13cd033bd/contract/DayNFT
pub fun getDayNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DayNFT",
        address: 0x0b7f00d13cd033bd,
        storage_path: "DayNFT.CollectionStoragePath",
        public_path: "DayNFT.CollectionPublicPath",
        public_collection_name: "DayNFT.CollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(DayNFT.CollectionPublicPath)
        .borrow<&{DayNFT.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDayNFT(id: id)!
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.description,
        external_domain_view_url: nft!.thumbnail,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.thumbnail, mimetype: "image")],
        metadata: {
            "name": nft!.name,
            "message": nft!.title,
            "description": nft!.description,
            "thumbnail": nft!.thumbnail,
            "date": nft!.dateStr
        }
    )
}

// https://flow-view-source.com/testnet/account/0xd2a68e9311fd75ee/contract/NFTContractData
pub fun getNFTContract(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData (
        name: "NFTContract",
        address: 0xd2a68e9311fd75ee,
        storage_path: "NFTContract.CollectionStoragePath",
        public_path: "NFTContract.CollectionPublicPath",
        public_collection_name: "NFTContract.CollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(NFTContract.CollectionPublicPath)
    .borrow<&{NonFungibleToken.CollectionPublic}>()
    if col == nil { return nil }

    let nfts = col!.getIDs()
    let nftData = col!.borrowNFT(id:id)
    if nfts == nil { return nil }
    var nftMetaData : {String:AnyStruct} = {}
    let nft = NFTContract.getNFTDataById(nftId: id)!
    if nft == nil { return nil }

     let templateData = NFTContract.getTemplateById(templateId: nft!.templateID)

     return NFTData (
        contract: contract,
        id: nftData.id,
        uuid: nftData.uuid,
        title: templateData.immutableData["title"]! as? String,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: templateData.immutableData
    )
}

// https://flow-view-source.com/mainnet/account/0x8c9bbcdcd7514081/contract/GogoroCollectible
pub fun getGogoroCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "GogoroCollectible",
        address: 0x8c9bbcdcd7514081,
        storage_path: "GogoroCollectible.CollectionStoragePath",
        public_path: "GogoroCollectible.CollectionPublicPath",
        public_collection_name: "GogoroCollectible.CollectionPublic",
        external_domain: "https://www.gogoro.com/",
    )

    let col = owner.getCapability(GogoroCollectible.CollectionPublicPath)
        .borrow<&{GogoroCollectible.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowGogoroCollectible(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()!
    let additional = metadata.getAdditional()

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.name,
        description: metadata.description,
        external_domain_view_url: "https://bay-staging.blocto.app/flow/gogoro/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: additional["mediaUrl"]!, mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": additional["rarity"]!,
            "editionNumber": nft!.editionNumber,
            "editionCount": metadata.itemCount
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x758252ab932a3416/contract/YahooCollectible
pub fun getYahooCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "YahooCollectible",
        address: 0x758252ab932a3416,
        storage_path: "YahooCollectible.CollectionStoragePath",
        public_path: "YahooCollectible.CollectionPublicPath",
        public_collection_name: "YahooCollectible.CollectionPublic",
        external_domain: "https://tw.yahoo.com/",
    )

    let col = owner.getCapability(YahooCollectible.CollectionPublicPath)
        .borrow<&{YahooCollectible.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowYahooCollectible(id: id)   
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.name,
        description: metadata.description,
        external_domain_view_url: "https://bay-staging.blocto.app/flow/yahoo/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.mediaHash), mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": metadata.getAdditional()["rarity"]!,
            "editionNumber": nft!.editionNumber,
            "editionCount": metadata.itemCount
        }
    )
}

// https://flow-view-source.com/testnet/account/0x1a3e64df3663edd3/contract/NowggNFT
pub fun getNowggNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContractData(
        name: "NowggNFT",
        address: 0x85b8bbf926dcddfa,
        storage_path: "NowggNFT.CollectionStoragePath",
        public_path: "NowggNFT.CollectionPublicPath",
        public_collection_name: "NowggNFT.NowggNFTCollectionPublic",
        external_domain: "https://nft-engg.testngg.net/"
    )

    let col = owner.getCapability(NowggNFT.CollectionPublicPath)
        .borrow<&{NowggNFT.NowggNFTCollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowNowggNFT(id: id)
    if nft == nil { return nil }
    let nftInfo = nft!

    let metadata = nftInfo.getMetadata()!
    let nftTypeId = (metadata["nftTypeId"]! as! String)

    let externalViewUrl = "https://nft-engg.testngg.net/nft/".concat(nftTypeId)

    return NFTData(
        contract: contract,
        id: nftInfo.id,
        uuid: nftInfo.uuid,
        title: metadata["title"]! as? String,
        description: metadata["description"]! as? String,
        external_domain_view_url: externalViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata["displayUrl"]! as? String, mimetype: (metadata["displayUrlMediaType"]! as? String)),
            NFTMedia(uri: metadata["contentUrl"]! as? String, mimetype: (metadata["contentType"]! as? String))
        ],
        metadata: {
            "client_name": metadata["clientName"],
            "nft_type_id": metadata["nftTypeId"],
            "creator_name": metadata["creatorName"],
            "client_id": metadata["clientId"],
            "max_count": metadata["maxCount"],
            "copy_number": metadata["copyNumber"]
        }
    )
}

// https://flow-view-source.com/testnet/account/0xd6b5d6d271a2b544/contract/ARTIFACT
pub fun getARTIFACT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ARTIFACT",
        address: 0xd6b5d6d271a2b544,
        storage_path: "ARTIFACT.collectionStoragePath",
        public_path: "ARTIFACT.collectionPublicPath",
        public_collection_name: "ARTIFACT.CollectionPublic",
        external_domain: "https://artifact.scmp.com/",
    )

    let col = owner.getCapability(ARTIFACT.collectionPublicPath)
        .borrow<&{ARTIFACT.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrow(id: id)
    if nft == nil { return nil }

    var metadata = nft!.data.metadata
    let title = metadata["artifactName"]!
    let description = metadata["artifactShortDescription"]!
    let series = metadata["artifactLookupId"]!

    metadata["editionNumber"] = metadata["artifactEditionNumber"]!
    metadata["editionCount"] = metadata["artifactNumberOfEditions"]!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: title,
        description: description,
        external_domain_view_url: "https://artifact.scmp.com/".concat(series),
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata["artifactFileUri"], mimetype: "video/mp4")
        ],
        metadata: metadata
    )
}

// https://flow-view-source.com/testnet/account/0xd6b5d6d271a2b544/contract/ARTIFACTPack
pub fun getARTIFACTPack(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ARTIFACTPack",
        address: 0xd6b5d6d271a2b544,
        storage_path: "ARTIFACTPack.collectionStoragePath",
        public_path: "ARTIFACTPack.collectionPublicPath",
        public_collection_name: "ARTIFACTPack.CollectionPublic",
        external_domain: "https://artifact.scmp.com/",
    )

    let col = owner.getCapability(ARTIFACTPack.collectionPublicPath)
        .borrow<&{ARTIFACTPack.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrow(id: id)
    if nft == nil { 
        return nil 
    }

    var description = ""
    var mediaUri = ""

    let isOpen = nft!.isOpen
    var metadata = nft!.metadata
    var series = metadata["lookupId"]!
    var title = metadata["name"]!

    if (isOpen) {
        description = metadata["descriptionOpened"]!
        mediaUri = metadata["fileUriOpened"]!
    } else {
        description = metadata["descriptionUnopened"]!
        mediaUri = metadata["fileUriUnopened"]!
    }

    metadata["editionNumber"] = nft!.edition.toString()
    metadata["editionCount"] = metadata["numberOfEditions"]!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: title,
        description: description,
        external_domain_view_url: "https://artifact.scmp.com/".concat(series),
        token_uri: nil,
        media: [
            NFTMedia(uri: mediaUri, mimetype: "image/png")
        ],
        metadata: metadata
    )
}

// https://flow-view-source.com/testnet/account/0xa3222e7505186595/contract/NftReality
pub fun getNftRealityNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "NftReality",
        address: 0xa3222e7505186595,
        storage_path: "NftReality.CollectionStoragePath",
        public_path: "NftReality.CollectionPublicPath",
        public_collection_name: "NftReality.NftRealityCollectionPublic",
        external_domain: "nftreality.pl",
    )

    let col = owner.getCapability(NftReality.CollectionPublicPath)
        .borrow<&{NftReality.NftRealityCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowNftReality(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display
    let ipfsFile = display.thumbnail as! MetadataViews.IPFSFile

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(ipfsFile.cid).concat("/").concat(ipfsFile.path!), mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.unit,
            "editionCount": nft!.totalUnits,
            "company": nft!.metadata.company,
            "role": nft!.metadata.role,
            "description": nft!.metadata.description,
            "artwork": nft!.metadata.artwork,
            "logotype": nft!.metadata.logotype,
            "creator": nft!.metadata.creator,
            "creationDate": nft!.metadata.creationDate
        }
    )
}

// https://flow-view-source.com/testnet/account/0x95702b3642af3d0c/contract/MatrixWorldAssetsNFT
pub fun getNftMatrixWorldAssetsNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "MatrixWorldAssetsNFT",
        address: 0x95702b3642af3d0c,
        storage_path: "MatrixWorldAssetsNFT.collectionStoragePath",
        public_path: "MatrixWorldAssetsNFT.collectionPublicPath",
        public_collection_name: "NonFungibleToken.CollectionPublic, NonFungibleToken.Receiver, MatrixWorldAssetsNFT.Metadata", // interfaces required for initialization
        external_domain: "https://matrixworld.org",
    )

    let col= owner
        .getCapability(MatrixWorldAssetsNFT.collectionPublicPath)
        .borrow<&{MatrixWorldAssetsNFT.Metadata, NonFungibleToken.CollectionPublic}>()
        ?? panic("NFT Collection not found")
    if col == nil { return nil }

    let nft = col!.borrowNFT(id: id)
    if nft == nil { return nil }

    let metadata = col.getMetadata(id: id)

    return NFTData(
        contract: contract,
        id: id,
        uuid: nft.uuid,
        title: metadata["name"],
        description: metadata["description"],
        external_domain_view_url: "https://matrixworld.org/profile",
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata["image"], mimetype: "image")
        ],
        metadata: metadata
    )
}
