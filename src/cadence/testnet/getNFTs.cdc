import NonFungibleToken from 0x631e88ae7f1d7c20
import Gaia from 0xc523a8bbf10fc4a3
import Beam from 0x6085ae87e78e1433
import CricketMoments from 0xb45e7992680a0f7f
import Shard from 0x7ff5f9ac593c3ee0
import FantastecNFT from 0x7b4fab78fbddc57e
import Vouchers from 0xe94a6e229293f196
import KOTD from 0x6085ae87e78e1433
import KlktnNFT from 0x336895dbe44c4b44
import MusicBlock from 0xeb3241ad7d7881db
import Mynft from 0x1eced429f2012ef0
import NyatheesOVO from 0xacf3dfa413e00f9f
import SportsIconCollectible from 0xc2824327396d3a39
import StarlyCard from 0x697d72a988a77070
import CaaPass from 0xa8b1239250f8d342
import TuneGO from 0xb30ec2319df2aa30
import TicalUniverse from 0x5511546363e3daa2
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
import BarterYardClubWerewolf from 0x195caada038c5806
import MetadataViews from 0x631e88ae7f1d7c20
import DayNFT from 0x0b7f00d13cd033bd
import NowggNFT from 0x1a3e64df3663edd3
import GogoroCollectible from 0x5fc35f03a6f33561
import YahooCollectible from 0x5d50ce3fd080edce
import YahooPartnersCollectible from 0x5d50ce3fd080edce
import BlindBoxRedeemVoucher from 0xb073f87f88ee7449
import SomePlaceCollectible from 0x0c153e28da9f988a
import ARTIFACTPack from 0xd6b5d6d271a2b544
import ARTIFACT from 0xd6b5d6d271a2b544
import NftReality from 0xa3222e7505186595
import MatrixWorldAssetsNFT from 0x95702b3642af3d0c
import RacingTime from 0xe0e251b47ff622ba
import Momentables from 0x9f2eb43b6df02730
import DropzToken from 0xc74cca921807df36
import Necryptolis from 0x720bbc077f5b0bda
import FLOAT from 0x0afe396ebc8eee65
import BreakingT_NFT from 0x04625c28593d9408
import Owners from 0x890f42a0a872ae77
import Metaverse from 0x1500efa9e71dcd23
import TheFabricantS2ItemNFT from 0x2a37a78609bba037
import VnMiss from 0x4fb7700ee1a19c44
import AADigital from 0x03a4ea61342fcb6c
import DooverseItems from 0x5ab407dfb3bf35e8
import TrartContractNFT from 0x4e024b8545e52d07
import SturdyItems from 0xfafb022e4e45634b
import QRLNFT from 0x5dfbd0d5aba6acf7
import Gear from 0x8c7e52f597aa6117
import ProShop_5 from 0x8c7e52f597aa6117
import Flovatar from 0x9392a4a7c3f49a0b
import FlovatarComponent from 0x9392a4a7c3f49a0b
import FlovatarComponentTemplate from 0x9392a4a7c3f49a0b
import MaxarNFT from 0x5dfbd0d5aba6acf7
import ByteNextMedalNFT from 0x734061e710725233
import SkyharborNFT from 0x9af2f3f3b56ce0e7

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
    pub let metadata: {String: String?}

    init(
        contract: NFTContractData,
        id: UInt64,
        uuid: UInt64?,
        title: String?,
        description: String?,
        external_domain_view_url: String?,
        token_uri: String?,
        media: [NFTMedia?],
        metadata: {String: String?}
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
                case "Gaia": d = getGaia(owner: owner, id: id)
                case "TopShot": d = getTopShot(owner: owner, id: id)
                case "MatrixWorldFlowFestNFT": d = getMatrixWorldFlowFest(owner: owner, id: id)
                case "TuneGO": d = getTuneGO(owner: owner, id: id)
                case "TicalUniverse": d = getTicalUniverse(owner: owner, id: id)
                case "StarlyCard": d = getStarlyCard(owner: owner, id: id)
                case "EternalShard": d = getEternalShard(owner: owner, id: id)
                case "Mynft": d = getMynft(owner: owner, id: id)
                case "Vouchers": d = getVoucher(owner: owner, id: id)
                case "MusicBlock": d = getMusicBlock(owner: owner, id: id)
                case "NyatheesOVO": d = getNyatheesOVO(owner: owner, id: id)
                case "FantastecNFT": d = getFantastecNFT(owner: owner, id: id)
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
                case "BarterYardClubWerewolf": d = getBarterYardClubWerewolf(owner: owner, id: id)
                case "DayNFT": d = getDayNFT(owner: owner, id: id)
                case "NowggNFT": d = getNowggNFT(owner: owner, id: id)
                case "GogoroCollectible": d = getGogoroCollectibleNFT(owner: owner, id: id)
                case "YahooCollectible": d = getYahooCollectibleNFT(owner: owner, id: id)
                case "YahooPartnersCollectible": d = getYahooPartnersCollectibleNFT(owner: owner, id: id)
                case "BlindBoxRedeemVoucher": d = getBlindBoxRedeemVoucherNFT(owner: owner, id: id)
                case "SomePlaceCollectible": d = getSomePlaceCollectibleNFT(owner: owner, id: id)
                case "ARTIFACTPack": d = getARTIFACTPack(owner: owner, id: id)
                case "ARTIFACT": d = getARTIFACT(owner: owner, id: id)
                case "NftReality": d = getNftRealityNFT(owner: owner, id: id)
                case "MatrixWorldAssetsNFT": d = getNftMatrixWorldAssetsNFT(owner: owner, id: id)
                case "RacingTime": d = getRacingTimeNFT(owner: owner, id: id)
                case "Momentables": d = getMomentables(owner: owner, id: id)
                case "DropzToken": d = getDropzToken(owner: owner, id: id)
                case "Necryptolis": d = getNecryptolisNFT(owner: owner, id: id)
                case "FLOAT" : d = getFLOAT(owner: owner, id: id)
                case "BreakingT_NFT": d = getBreakingTNFT(owner: owner, id: id)
                case "Owners": d = getOwnersNFT(owner: owner, id: id)
                case "Metaverse": d = getOzoneMetaverseNFT(owner: owner, id: id)
                case "TheFabricantS2ItemNFT": d = getTheFabricantS2ItemNFT(owner: owner, id: id)
                case "VnMiss": d = getVnMiss(owner: owner, id: id)
                case "AvatarArt": d = getAvatarArt(owner: owner, id: id)
                case "Dooverse": d = getDooverseNFT(owner: owner, id: id)
                case "Gear": d = getGear(owner: owner, id: id)
                case "ProShop_5": d = getProShop5(owner: owner, id: id)
                case "TrartContractNFT": d = getTrartContractNFT(owner: owner, id: id)
                case "SturdyItems": d = getSturdyItemsNFT(owner: owner, id: id)
                case "QRL": d = getQRLNFT(owner: owner, id: id)
                case "Flovatar": d = getFlovatarNFT(owner: owner, id: id)
                case "FlovatarComponent": d = getFlovatarComponentNFT(owner: owner, id: id)
                case "ByteNextMedalNFT": d = getByteNextMedalNFT(owner: owner, id: id)
				case "SkyharborNFT": d = getSkyHarborNFT(owner: owner, id: id)
                default:
                    panic("adapter for NFT not found: ".concat(key))
            }
            NFTs.append(d)
        }
    }

    return NFTs
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

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["uri"],
        token_uri: nil,
        media: [NFTMedia(uri: metadata!["img"], mimetype: "image")],
        metadata: rawMetadata,
    )
}

pub fun stringStartsWith(string: String, prefix: String): Bool {
    if(string.length < prefix.length) {
        return false
    }

    let beginning = string.slice(from: 0, upTo: prefix.length)

    let prefixArray = prefix.utf8
    let beginningArray = beginning.utf8

    for index, element in prefixArray {
        if(beginningArray[index] != prefixArray[index]) {
            return false
        }
    }

    return true
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

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        if stringStartsWith(string: metadataUrl, prefix: ipfsScheme) || stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
            mediaUrl = metadataUrl
        }
        else if metadataUrl.length > 0 {
            mediaUrl = ipfsScheme.concat(metadataUrl)
        }
    }

    var domainUrl: String? = nil
    if metadata!["domainUrl"]  != nil {
        let metadataDomainUrl = metadata!["domainUrl"]!
        if stringStartsWith(string: metadataDomainUrl, prefix: httpsScheme) {
            domainUrl = metadataDomainUrl
        }
        else if metadataDomainUrl.length > 0 {
             domainUrl = httpsScheme.concat(metadataDomainUrl)
        }
    }

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: domainUrl,
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeichtxzrocxo7ec5qybfxxlyod5bbymblitjwb2aalv2iyhe42pk4e/Frightclub.jpg", mimetype:"image/jpeg")],
        metadata: rawMetadata,
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

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

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
        metadata: rawMetadata,
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

    let rawMetadata: {String:String?} = {}
    for key in nft!.metadata!.keys {
        rawMetadata.insert(key: key, nft!.metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: rawMetadata,
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
            "typeID": nft!.typeID.toString()
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

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        if stringStartsWith(string: metadataUrl, prefix: ipfsScheme) || stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
            mediaUrl = metadataUrl
        }
        else if metadataUrl.length > 0 {
            mediaUrl = ipfsScheme.concat(metadataUrl)
        }
    }

    var domainUrl: String? = nil
    if metadata!["domainUrl"]  != nil {
        let metadataDomainUrl = metadata!["domainUrl"]!
        if stringStartsWith(string: metadataDomainUrl, prefix: httpsScheme) {
            domainUrl = metadataDomainUrl
        }
        else if metadataDomainUrl.length > 0 {
            domainUrl = httpsScheme.concat(metadataDomainUrl)
        }
    }

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: domainUrl,
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeidy62mofvdpzr5gujq57kcpm27pciqx33pahxbfuwgzea646k2nay/s1_poster.jpg", mimetype:"image/jpeg")],
        metadata: rawMetadata,
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
            "creator": data.creator.toString(),
            "cpower": data.cpower.toString(),
            "cid": data.cid,
            "generation": data.generation.toString()
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

    let metadata = nft!.getMetadata()
    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: metadata["url"],
        token_uri: nil,
        media: [],
        metadata: rawMetadata,
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

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.card.title,
        description: metadata.card.description,
        external_domain_view_url: metadata.url,
        token_uri: nil,
        media: [NFTMedia(uri: metadata.card.mediaSizes[0].url, mimetype: metadata.card.mediaType)],
        metadata: {
            "id": nft!.starlyID,
            "rarity": metadata.card.rarity,
            "collectionID": metadata.collection.id,
            "collectionTitle": metadata.collection.title,
            "cardID": metadata.card.id.toString(),
            "edition": metadata.edition.toString(),
            "editions": metadata.card.editions.toString(),
            "previewUrl": metadata.previewUrl,
            "creatorName": metadata.collection.creator.name,
            "creatorUsername": metadata.collection.creator.username
        }
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

// https://flow-view-source.com/testnet/account/0xb30ec2319df2aa30/contract/TuneGO
pub fun getTuneGO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TuneGO",
        address: 0xb30ec2319df2aa30,
        storage_path: "TuneGO.CollectionStoragePath",
        public_path: "TuneGO.CollectionPublicPath",
        public_collection_name: "TuneGO.TuneGOCollectionPublic",
        external_domain: "tunegonft.com"
    )

    let col = owner.getCapability(TuneGO.CollectionPublicPath)
        .borrow<&{TuneGO.TuneGOCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }

    let data = nft!.data
    let itemMetadata = TuneGO.getItemMetadata(itemId: data.itemId)!
    let editionNumber = data.serialNumber!
    let editionCount = TuneGO.getNumberCollectiblesInEdition(setId: data.setId, itemId: data.itemId)!

    var metadata = itemMetadata
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }
    rawMetadata["editionNumber"] = editionNumber.toString()
    rawMetadata["editionCount"] = editionCount.toString()
    rawMetadata["royaltyAddress"] = "0x3691a2fcb9626f20"
    rawMetadata["royaltyPercentage"] = "5.0"

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: itemMetadata["Title"],
        description: itemMetadata["Description"],
        external_domain_view_url: "https://tunegonft.com/collectible/".concat(nft!.uuid.toString()),
        token_uri: nil,
        media: [ NFTMedia(uri: itemMetadata["Media URL"]!, mimetype: "video/mp4") ],
        metadata: rawMetadata
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
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["FullName"],
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: rawMetadata,
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
    let rawMetadata: {String:String?} = {}
    for key in nft!.getAllTexts().keys {
        rawMetadata.insert(key: key,nft!.getAllTexts()[key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: name,
        description: nil,
        external_domain_view_url: viewURL,
        token_uri: nil,
        media: [NFTMedia(uri: URI, mimetype: "image")],
        metadata: rawMetadata,
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
    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["Title"]!,
        description: nil,
        external_domain_view_url: "thefootballclub.com",
        token_uri: nil,
        media: [NFTMedia(uri: metadata["URL"]!, mimetype: "image")],
        metadata: rawMetadata,
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

    let rawMetadata: {String:String?} = {}

    for key in nft!.data!.metadata!.keys {
        if nft!.data!.metadata![key]!.getType().isSubtype(of: Type<Number>()) {
            rawMetadata.insert(key: key, (nft!.data!.metadata![key]! as! Number).toString())
        } else if nft!.data!.metadata![key]!.getType().isSubtype(of: Type<String>()) {
            rawMetadata.insert(key: key, (nft!.data!.metadata![key]! as! String))
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: title,
        description: description,
        external_domain_view_url: external_domain_view_url,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.data!.uri, mimetype: "image")],
        metadata: rawMetadata,
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
            "rarity": getRarity()
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
            "edition": nft!.metadata!.edition.toString()
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

    let rawMetadata: {String:String?} = {}
    for key in nft!.getNFTTemplate()!.getMetadata()!.keys {
        rawMetadata.insert(key: key, nft!.getNFTTemplate()!.getMetadata()![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.getNFTTemplate()!.description,
        external_domain_view_url: nil,
        token_uri: nft!.getNFTTemplate()!.getMetadata()["uri"]!,
        media: [NFTMedia(uri: nft!.getNFTTemplate()!.getMetadata()["uri"]!, mimetype: nft!.getNFTTemplate()!.getMetadata()["mimetype"]!)],
        metadata: rawMetadata,
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
            "coCreator": itemData.coCreator.toString(),
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

    let nft = col!.borrowZeedle(id: id)
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
            "typeID": nft!.typeID.toString(),
            "evoultionStage": nft!.evolutionStage.toString(),
            "serialNumber": nft!.serialNumber,
            "editionNumber": nft!.edition.toString(),
            "editionCount": nft!.editionCap.toString(),
            "rarity": nft!.rarity,
            "carbonOffset": nft!.carbonOffset.toString()
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

    let rawMetadata = nft!.getMetadata()
    var metadata: {String: String?} = {}
    var media: [NFTMedia] = []
    let description = nft!.setID == 0 ? "Union Jordan 4 'Off Noir' x Nike Dunk" : nft!.description()

    if let mediaValue = metadata["media"] {
        if let supportedMedia = mediaValue as? {String: [String]} {
            for mediaType in supportedMedia.keys {
                for mediaURI in supportedMedia[mediaType]! {
                    media.append(NFTMedia(uri: mediaURI, mimetype: mediaType))
                }
            }
        }
    }

    for key in rawMetadata.keys {
        if rawMetadata[key]!.getType().isSubtype(of: Type<String>()) {
            metadata[key] = rawMetadata[key]! as! String
        } else if rawMetadata[key]!.getType().isSubtype(of: Type<Number>()) {
            metadata[key] = (rawMetadata[key]! as! Number).toString()
        } else if rawMetadata[key]!.getType() != Type<String>() {
            metadata.remove(key: key)
        }
    }

    if (!metadata.containsKey("editionNumber")) { metadata["editionNumber"] = nft!.setID == 0 ? nft!.id.toString() : nft!.instanceID.toString()  }
    if (!metadata.containsKey("editionCount")) { metadata["editionCount"] = Kicks.getSneakerSet(withID: nft!.setID)!.getTotalSupply().toString() }
    if (!metadata.containsKey("royaltyAddress")) { metadata["royaltyAddress"] = "0xe861e151d3556d70" }
    if (!metadata.containsKey("royaltyPercentage")) { metadata["royaltyPercentage"] = "5" }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name(),
        description: description,
        external_domain_view_url: "https://www.nftlx.io/nft/".concat(nft!.id.toString()),
        token_uri: nil,
        media: media,
        metadata: metadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x20187093790b9aef/contract/MintStoreItem
// https://flow-view-source.com/testnet/account/0x985d410b577fd4a1/contract/MintStoreItem
pub fun getMintStoreItem(owner: PublicAccount, id: UInt64): NFTData? {


    let col = owner.getCapability(MintStoreItem.CollectionPublicPath)
        .borrow<&{MintStoreItem.MintStoreItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMintStoreItem(id: id)
    if nft == nil { return nil }

    let editionData = MintStoreItem.EditionData(editionID: nft!.data.editionID)!
    let description = editionData!.metadata["description"]!;
    let merchantName = MintStoreItem.getMerchant(merchantID:nft!.data.merchantID)!


    var external_domain = ""
     switch merchantName {
        case "Bulls":
            external_domain =  "https://bulls.mint.store"
            break;
        case "Charlotte Hornets":
            external_domain =  "https://hornets.mint.store"
            break;
        default:
            external_domain =  ""
     }

     if editionData!.metadata["nftType"]! == "Type C" {
         external_domain =  "https://misa.art/collections/nft"
     }


    let contract = NFTContractData(
        name: merchantName,
        address: 0x985d410b577fd4a1,
        storage_path: "MintStoreItem.CollectionStoragePath",
        public_path: "MintStoreItem.CollectionPublicPath",
        public_collection_name: "MintStoreItem.MintStoreItemCollectionPublic",
        external_domain: external_domain
    )

    let rawMetadata: {String: String?} = {
        "merchantID": nft!.data.merchantID.toString(),
        "merchantName": merchantName,
        "editionID": editionData!.editionID.toString(),
        "numberOfItemsMinted": editionData!.numberOfItemsMinted.toString(),
        "printingLimit": editionData!.printingLimit!.toString(),
        "editionNumber": nft!.data.editionNumber.toString(),
        "description": editionData!.metadata["description"]!,
        "name":editionData!.metadata["name"]!,
        "nftType":editionData!.metadata["nftType"]!,
        "editionCount": editionData!.printingLimit!.toString(),
        "royaltyAddress": editionData!.metadata["royaltyAddress"],
        "royaltyPercentage": editionData!.metadata["royaltyPercentage"]
    }

     return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: editionData.name,
        description: description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: editionData!.metadata["mediaURL"], mimetype: editionData!.metadata["mimetype"])],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/testnet/account/0x195caada038c5806/contract/BarterYardPackNFT
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
// https://flow-view-source.com/testnet/account/0x195caada038c5806/contract/BarterYardClubWerewolf
pub fun getBarterYardClubWerewolf(owner: PublicAccount, id: UInt64): NFTData? {
  let contract = NFTContractData(
        name: "BarterYardClubWerewolf",
        address: 0x195caada038c5806,
        storage_path: "BarterYardClubWerewolf.CollectionStoragePath",
        public_path: "BarterYardClubWerewolf.CollectionPublicPath",
        public_collection_name: "BarterYardClubWerewolf.CollectionPublic",
        external_domain: "https://app.barteryard.club"
    )
    let collection = owner.getCapability<&{MetadataViews.ResolverCollection}>(BarterYardClubWerewolf.CollectionPublicPath).borrow()
        ?? panic("Could not borrow a reference to the collection")
    let nft = collection.borrowViewResolver(id: id)
    let view = nft.resolveView(Type<BarterYardClubWerewolf.CompleteDisplay>())!
    let display = view as! BarterYardClubWerewolf.CompleteDisplay

    let background = display.getAttributes()[0].value
    let fur = display.getAttributes()[1].value
    let body = display.getAttributes()[2].value
    let eyes = display.getAttributes()[4].value
    let glasses = display.getAttributes()[5].value
    let headgear = display.getAttributes()[6].value
    let item = display.getAttributes()[7].value
    let mouth = display.getAttributes()[3].value
    return NFTData(
      contract: contract,
      id: id,
      uuid: nil,
      title: display.name,
      description: display.description,
      external_domain_view_url: "https://barteryard.club/nft/".concat(id.toString()),
      token_uri: nil,
      media: [NFTMedia(uri: "https://ipfs.io/ipfs/".concat(display.thumbnail.cid).concat("/").concat(display.thumbnail.path!), mimetype: "image")],
      metadata: {
        "Background": background,
        "Fur": fur,
        "Body": body,
        "Eyes": eyes,
        "Glasses": glasses,
        "Headgear": headgear,
        "Item": item,
        "Mouth": mouth
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
            "date": nft!.dateStr,
            "editionNumber": "1",
            "editionCount": "1",
            "royaltyAddress": "0x0b7f00d13cd033bd",
            "royaltyPercentage": "5.0"
        }
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
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x5d50ce3fd080edce/contract/YahooCollectible
pub fun getYahooCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "YahooCollectible",
        address: 0x5d50ce3fd080edce,
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
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x5d50ce3fd080edce/contract/YahooPartnersCollectible
pub fun getYahooPartnersCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "YahooPartnersCollectible",
        address: 0x5d50ce3fd080edce,
        storage_path: "YahooPartnersCollectible.CollectionStoragePath",
        public_path: "YahooPartnersCollectible.CollectionPublicPath",
        public_collection_name: "YahooPartnersCollectible.CollectionPublic",
        external_domain: "https://tw.yahoo.com/",
    )

    let col = owner.getCapability(YahooPartnersCollectible.CollectionPublicPath)
        .borrow<&{YahooPartnersCollectible.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowYahooPartnersCollectible(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.name,
        description: metadata.description,
        external_domain_view_url: "https://bay-staging.blocto.app/flow/yahoo-partners/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.mediaHash), mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": metadata.getAdditional()["rarity"]!,
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
        }
    )
}

// https://flow-view-source.com/testnet/account/0xb073f87f88ee7449/contract/BlindBoxRedeemVoucher
pub fun getBlindBoxRedeemVoucherNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "BlindBoxRedeemVoucher",
        address: 0xb073f87f88ee7449,
        storage_path: "BlindBoxRedeemVoucher.CollectionStoragePath",
        public_path: "BlindBoxRedeemVoucher.CollectionPublicPath",
        public_collection_name: "BlindBoxRedeemVoucher.CollectionPublic",
        external_domain: "https://flow.com/",
    )

    let col = owner.getCapability(BlindBoxRedeemVoucher.CollectionPublicPath)
        .borrow<&{BlindBoxRedeemVoucher.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowBlindBoxRedeemVoucher(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.name,
        description: metadata.description,
        external_domain_view_url: "https://bay-staging.blocto.app/flow/blindbox-voucher/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.mediaHash), mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": metadata.getAdditional()["rarity"]!,
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
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
            "clientName": metadata["clientName"]! as? String,
            "nftTypeId": metadata["nftTypeId"]! as? String,
            "creatorName": metadata["creatorName"]! as? String,
            "clientId": metadata["clientId"]! as? String,
            "maxCount": (metadata["maxCount"]! as? UInt64)!.toString(),
            "copyNumber": (metadata["copyNumber"]! as? UInt64)!.toString()
        }
    )
}

// https://flow-view-source.com/testnet/account/0x0c153e28da9f988a/contract/SomePlaceCollectible
pub fun getSomePlaceCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "SomePlaceCollectible",
        address: 0x0c153e28da9f988a,
        storage_path: "SomePlaceCollectible.CollectionStoragePath",
        public_path: "SomePlaceCollectible.CollectionPublicPath",
        public_collection_name: "SomePlaceCollectible.CollectibleCollectionPublic",
        external_domain: "https://some.place",
    )

    let col = owner.getCapability(SomePlaceCollectible.CollectionPublicPath)
        .borrow<&{SomePlaceCollectible.CollectibleCollectionPublic}>()
    if col == nil { return nil }

    let optNft = col!.borrowCollectible(id: id)
    if optNft == nil { return nil }
    let nft = optNft!

    let setID = nft.setID
    let setMetadata = SomePlaceCollectible.getMetadataForSetID(setID: setID)!
    let editionMetadata = SomePlaceCollectible.getMetadataForNFTByUUID(uuid: nft.id)!

    return NFTData(
        contract: contract,
        id: nft.id,
        uuid: nft.uuid,
        title: editionMetadata.getMetadata()["title"] ?? setMetadata.getMetadata()["title"] ?? "",
        description: editionMetadata.getMetadata()["description"] ?? setMetadata.getMetadata()["description"] ?? "",
        external_domain_view_url: "https://some.place",
        token_uri: nil,
        media: [
            NFTMedia(uri: editionMetadata.getMetadata()["mediaURL"] ?? setMetadata.getMetadata()["mediaURL"] ?? "", mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft.editionNumber.toString(),
            "editionCount": setMetadata.getMaxNumberOfEditions().toString(),
            "royaltyAddress": "0x0c153e28da9f988a",
            "royaltyPercentage": "10.0"
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

    metadata["editionNumber"] = metadata["artifactEditionNumber"]!
    metadata["editionCount"] = metadata["artifactNumberOfEditions"]!
    metadata["royaltyAddress"] = "0xe9e563d7021d6eda"
    metadata["royaltyPercentage"] = "10.0"
    metadata["rarity"] = metadata["artifactRarityLevel"]!

    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: title,
        description: description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata["artifactFileUri"], mimetype: "video/mp4")
        ],
        metadata: rawMetadata
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
    metadata["royaltyAddress"] = "0xe9e563d7021d6eda"
    metadata["royaltyPercentage"] = "10.0"
    metadata["rarity"] = metadata["rarityLevel"]!

    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

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
        metadata: rawMetadata
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

    let metadataView = nft!.resolveView(Type<NftReality.NftRealityMetadataView>())!
    let metadata = metadataView as! NftReality.NftRealityMetadataView

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.artwork).concat("/").concat("artwork"), mimetype: "image")
        ],
        metadata: {
            "editionNumber": metadata.unit.toString(),
            "editionCount": metadata.totalUnits.toString(),
            "company": metadata.company,
            "role": metadata.role,
            "description": metadata.description,
            "artwork": metadata.artwork,
            "logotype": metadata.logotype,
            "creator": metadata.creator,
            "creationDate": metadata.creationDate
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
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

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
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/testnet/account/0xe0e251b47ff622ba/contract/RacingTime
pub fun getRacingTimeNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "RacingTimeNFT",
        address: 0xe0e251b47ff622ba,
        storage_path: "RacingTime.CollectionStoragePath",
        public_path: "RacingTime.CollectionPublicPath",
        public_collection_name: "RacingTime.CollectionPublic",
        external_domain: "https://www.racingtime.io/"
    )

    let col = owner.getCapability(RacingTime.CollectionPublicPath)
        .borrow<&{RacingTime.RacingTimeCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowRacingTime(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: UInt64(nft!.data!.rewardID),
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.data!.ipfs, mimetype: "image")],
        metadata: {
            "rewardID": nft!.data!.rewardID.toString(),
            "typeID": nft!.data!.typeID.toString(),
            "serialNumber": nft!.data!.serialNumber.toString(),
            "ipfs": nft!.data!.ipfs
        }
    )
}

// https://flow-view-source.com/testnet/account/0x9f2eb43b6df02730/contract/Momentables
pub fun getMomentables(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContractData(
        name: "Momentables",
        address: 0x9f2eb43b6df02730,
        storage_path: "Momentables.CollectionStoragePath",
        public_path: "Momentables.CollectionPublicPath",
        public_collection_name: "Momentables.MomentablesCollectionPublic",
        external_domain: "https://nextdecentrum.com"
    )

    let col = owner.getCapability(Momentables.CollectionPublicPath)
        .borrow<&{Momentables.MomentablesCollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowMomentables(id: id)
    if nft == nil { return nil }

    //let metadata = Gaia.getTemplateMetaData(templateID: nft!.data.templateID)
    let ipfsURL = "https://gateway.pinata.cloud/ipfs/".concat(nft!.imageCID);

    let traits = nft!.getTraits();
    let rawMetadata: {String:String?} = {}

       // Core metadata attributes
    rawMetadata.insert(key:"editionNumber", nft!.id.toString());
    rawMetadata.insert(key:"editionCount", "7006");
    rawMetadata.insert(key:"royaltyAddress", "0x9e1cf1801d78b2ed");
    rawMetadata.insert(key:"royaltyPercentage", "10.1");

    for key in traits.keys {
        let currentTrait = traits[key]!;
        for currentTraitKey in currentTrait.keys{
            rawMetadata.insert(key:key.concat("-").concat(currentTraitKey),currentTrait[currentTraitKey])
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: ipfsURL, mimetype: "image")],
        metadata: {
            "editionNumber": nft!.id.toString(),
            "editionCount": "7006",
            "royaltyAddress": "0x9e1cf1801d78b2ed",
            "royaltyPercentage": "10.0"
        }
    )
}

// https://flow-view-source.com/testnet/account/0xc74cca921807df36/contract/DropzToken
pub fun getDropzToken(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DropzToken",
        address: 0xc74cca921807df36,
        storage_path: "DropzToken.CollectionStoragePath",
        public_path: "DropzToken.CollectionPublicPath",
        public_collection_name: "DropzToken.DropzTokenCollectionPublic",
        external_domain: "https://dropznft.xyz"
    )

    let col = owner.getCapability(DropzToken.CollectionPublicPath)
        .borrow<&{DropzToken.DropzTokenCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDropzToken(id: id)
    if nft == nil { return nil }

    let display = nft!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display
    let thumbnail = display.thumbnail as! MetadataViews.IPFSFile
    let metadata = nft!.resolveView(Type<DropzToken.IPFSTokenMetadata>())! as! DropzToken.IPFSTokenMetadata

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: metadata.uri(),
        media: [NFTMedia(uri: thumbnail.uri(), mimetype: "image")],
        metadata: {
            "ipfs": metadata.uri()
        }
    )
}


// https://flow-view-source.com/testnet/account/0x720bbc077f5b0bda/contract/Necryptolis
pub fun getNecryptolisNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Necryptolis",
        address: 0x720bbc077f5b0bda,
        storage_path: "Necryptolis.CollectionStoragePath",
        public_path: "Necryptolis.CollectionPublicPath",
        public_collection_name: "Necryptolis.NecryptolisCollectionPublic",
        external_domain: "https://stage.necryptolis.com"
    )

    let col = owner.getCapability(Necryptolis.CollectionPublicPath)
        .borrow<&{Necryptolis.NecryptolisCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCemeteryPlot(id: id)
    if nft == nil { return nil }

    let display = nft!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://stage.necryptolis.com/nft/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: display.thumbnail.uri(), mimetype: "image")],
        metadata: {
        }
    )
}

//https://flow-view-source.com/testnet/account/0x0afe396ebc8eee65/contract/FLOAT
pub fun getFLOAT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "FLOAT",
        address: 0x0afe396ebc8eee65,
        storage_path: "FLOAT.FLOATCollectionStoragePath",
        public_path: "FLOAT.FLOATCollectionPublicPath",
        public_collection_name: "FLOAT.CollectionPublic",
        external_domain: "https://floats.city/"
    )

    let col = owner.getCapability(FLOAT.FLOATCollectionPublicPath)
        .borrow<&FLOAT.Collection{FLOAT.CollectionPublic}>()
    if col == nil { return nil }

    let float = col!.borrowFLOAT(id: id)
    if float == nil { return nil }

    let display = float!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: float!.id,
        uuid: float!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://floats.city/".concat((owner.address as Address).toString()).concat("/float/").concat(float!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: float!.eventImage, mimetype: "image")],
        metadata: {
            "eventName" : float!.eventName,
            "eventDescription" : float!.eventDescription,
            "eventHost" : (float!.eventHost as Address).toString(),
            "eventId" : float!.eventId.toString(),
            "eventImage" : float!.eventImage,
            "serial": float!.serial.toString(),
            "dateReceived": float!.dateReceived.toString()
        }
    )
}

// https://flow-view-source.com/testnet/account/0x04625c28593d9408/contract/BreakingT_NFT
pub fun getBreakingTNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "BreakingT_NFT",
        address: 0x04625c28593d9408,
        storage_path: "BreakingT_NFT.CollectionStoragePath",
        public_path: "BreakingT_NFT.CollectionPublicPath",
        public_collection_name: "BreakingT_NFT.BreakingT_NFT",
        external_domain: "https://breakingt.com/",
    )

    let col = owner.getCapability(BreakingT_NFT.CollectionPublicPath)
        .borrow<&{BreakingT_NFT.BreakingT_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowBreakingT_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = BreakingT_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = BreakingT_NFT.getSeriesMetadata(
        seriesId: BreakingT_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = BreakingT_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = BreakingT_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://marketplace.breakingt.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()

        }
    )
}

// https://flow-view-source.com/testnet/account/0x890f42a0a872ae77/contract/Owners
pub fun getOwnersNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Owners",
        address: 0x890f42a0a872ae77,
        storage_path: "/storage/OwnersCollection0x890f42a0a872ae77",
        public_path: "Owners.CollectionPublicPath",
        public_collection_name: "Owners.OwnersCollectionPublic",
        external_domain: "https://nft-owners.jp"
    )

    let col = owner.getCapability(Owners.CollectionPublicPath)
        .borrow<&{Owners.OwnersCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowOwners(id: id)

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nil,
        title: nil,
        description: nil,
        external_domain_view_url: "https://stg.nft-owners.jp",
        token_uri: nil,
        media: [NFTMedia(uri: "https://files.stg.nft-owners.jp/profile_images/".concat(nft!.twitterID.toString()).concat(".jpg"), mimetype: "image")],
        metadata: {
            "twitterID": nft!.twitterID.toString()
        }
    )
}

// https://flow-view-source.com/testnet/account/0x1500efa9e71dcd23/contract/Metaverse
pub fun getOzoneMetaverseNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Metaverse",
        address: 0x1500efa9e71dcd23,
        storage_path: "Metaverse.CollectionStoragePath",
        public_path: "Metaverse.CollectionPublicPath",
        public_collection_name: "Metaverse.MetaverseCollectionPublic",
        external_domain: "https://ozonemetaverse.io"
    )

    let col = owner.getCapability(Metaverse.CollectionPublicPath)
        .borrow<&{Metaverse.MetaverseCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMetaverse(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()
    if metadata == nil { return nil }

    let rawMetadata: {String: String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    if (!metadata.containsKey("editionNumber")) {
        rawMetadata.insert(key: "editionNumber", nft!.id.toString())
    }
    if (!metadata.containsKey("editionCount")) {
        rawMetadata.insert(key: "editionCount", Metaverse.totalSupply.toString())
    }
    if (!metadata.containsKey("royaltyAddress")) {
        rawMetadata.insert(key: "royaltyAddress", "0xbf8ada6bb945651f")
    }
    if (!metadata.containsKey("royaltyPercentage")) {
        rawMetadata.insert(key: "royaltyPercentage", "10.0")
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["name"],
        description: metadata["description"],
        external_domain_view_url: metadata["url"],
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata["videoUrl"], mimetype: metadata["videoMimeType"]),
            NFTMedia(uri: metadata["imageUrl"], mimetype: metadata["imageMimeType"])
        ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/testnet/account/0x2a37a78609bba037/contract/TheFabricantS2ItemNFT
pub fun getTheFabricantS2ItemNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TheFabricantS2ItemNFT",
        address: 0x2a37a78609bba037,
        storage_path: "TheFabricantS2ItemNFT.CollectionStoragePath",
        public_path: "TheFabricantS2ItemNFT.CollectionPublicPath",
        public_collection_name: "TheFabricantS2ItemNFT.ItemCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(TheFabricantS2ItemNFT.CollectionPublicPath)
        .borrow<&{TheFabricantS2ItemNFT.ItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowItem(id: id)!
    if nft == nil { return nil }

    let itemDataID = nft.item.itemDataID
    let itemData = TheFabricantS2ItemNFT.getItemData(id: itemDataID)
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
            "coCreator": itemData.coCreator.toString(),
            "season": itemMetadata["season"]!.metadataValue
        }
    )
}

// https://flow-view-source.com/testnet/account/0x4fb7700ee1a19c44/contract/VnMiss
pub fun getVnMiss(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "VnMiss",
        address: 0x7c11edb826692404,
        storage_path: "VnMiss.CollectionStoragePath",
        public_path: "VnMiss.CollectionPublicPath",
        public_collection_name: "VnMiss.VnMissCollectionPublic",
        external_domain: "https://hoahauhoanvuvietnam.avatarart.io"
    )

    let col = owner.getCapability(VnMiss.CollectionPublicPath)
        .borrow<&{VnMiss.VnMissCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowVnMiss(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display

    let levelAsString = fun (level: UInt8): String {
         switch level {
            case VnMiss.Level.Bronze.rawValue:
                return "Bronze"

            case VnMiss.Level.Silver.rawValue:
                return "Silver"

            case VnMiss.Level.Diamond.rawValue:
                return "Diamond"
        }
        return "Unknown"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://avatarart.io/nfts/A.7c11edb826692404.VnMiss.NFT.".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: display.thumbnail.uri(), mimetype: "image")],
        metadata: {
            "name": display.name,
            "level": levelAsString(nft!.level),
            "editionNumber": nft!.id.toString(),
            "editionCount": "14200",
            "royaltyAddress": "0xe7da9bede73c8cc2",
            "royaltyPercentage": "5.0"
        }
    )
}

// https://flow-view-source.com/testnet/account/0x03a4ea61342fcb6c/contract/AADigital
pub fun getAvatarArt(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "AADigital",
        address: 0x03a4ea61342fcb6c,
        storage_path: "AADigital.CollectionStoragePath",
        public_path: "AADigital.CollectionPublicPath",
        public_collection_name: "AADigital.AADigitalCollectionPublic",
        external_domain: "https://avatarart.io"
    )

    let col = owner.getCapability(AADigital.CollectionPublicPath)
        .borrow<&{AADigital.AADigitalCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowAADigital(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://avatarart.io/nfts/A.39eeb4ee6f30fc3f.AADigital.NFT.".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: "https://api.avatarart.io/upload".concat(display.thumbnail.uri()), mimetype: "image")],
        metadata: {
            "editionNumber": "1",
            "editionCount": AADigital.totalSupply.toString(),
            "royaltyAddress": "0xe7da9bede73c8cc2",
            "royaltyPercentage": "5.0"
        }
    )
}

// https://flow-view-source.com/testnet/account/0x5ab407dfb3bf35e8/contract/DooverseItems
pub fun getDooverseNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DooverseItems",
        address: 0x5ab407dfb3bf35e8,
        storage_path: "DooverseItems.CollectionStoragePath",
        public_path: "DooverseItems.CollectionPublicPath",
        public_collection_name: "DooverseItems.DooverseItemsCollectionPublic",
        external_domain: "https://dooverse.io/"
    )

    let col = owner.getCapability(DooverseItems.CollectionPublicPath)
        .borrow<&{DooverseItems.DooverseItemsCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDooverseItem(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()
    let rawMetadata: {String : String?} = {}
    for key in metadata.keys {
        rawMetadata[key] = metadata[key]
    }

    if (!metadata.containsKey("editionNumber")) {
        rawMetadata.insert(key: "editionNumber", nft!.id.toString())
    }
    if (!metadata.containsKey("editionCount")) {
        rawMetadata.insert(key: "editionCount", DooverseItems.totalSupply.toString())
    }
    if (!metadata.containsKey("royaltyAddress")) {
        rawMetadata.insert(key: "royaltyAddress", "0x8f4ef32a0ffb99a6")
    }
    if (!metadata.containsKey("royaltyPercentage")) {
        rawMetadata.insert(key: "royaltyPercentage", "5")
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "Dooverse Items NFT",
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/testnet/account/0x4e024b8545e52d07/contract/TrartContractNFT
pub fun getTrartContractNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TrartContractNFT",
        address: 0x4e024b8545e52d07,
        storage_path: "/storage/TrartContractNFTCollection",
        public_path: "/public/TrartContractNFTCollection",
        public_collection_name: "TrartContractNFT.ICardCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(TrartContractNFT.CollectionPublicPath)
        .borrow<&{TrartContractNFT.ICardCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCard(id: id)
    if nft == nil { return nil }

    let metadata = TrartContractNFT.getMetadataForCardID(cardID: nft!.id)!.data
    let rawMetadata: {String:String?} = {
        "editionNumber": metadata["SERIES ID"]??"",
        "editionCount": metadata["TOTAL ISSUANCE"]??"",
        "royaltyAddress": "0x399169c5c83bf22d",
        "royaltyPercentage": "2.5"
    }
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    var nftTitle: String? = metadata["NAME"]
    if nftTitle == nil && metadata["CARD NUMBER"] != nil {
       nftTitle = (metadata["CARD SERIES"]!=nil?metadata["CARD SERIES"]!.concat(" - "):"").concat(metadata["CARD NUMBER"]!)
    }

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var ipfsURL: String? = nil
    let metadataUrl: String = metadata["URI"]?? metadata["URL"]?? ""

    if metadataUrl.length > ipfsScheme.length && stringStartsWith(string: metadataUrl, prefix: ipfsScheme) {
        ipfsURL = "https://trartgateway.mypinata.cloud/ipfs/".concat(metadataUrl.slice(from: ipfsScheme.length, upTo: metadataUrl.length));
    } else if metadataUrl.length > httpsScheme.length &&stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
        ipfsURL = metadataUrl
    }

    let mediaArray:[NFTMedia] = ipfsURL!=nil?[NFTMedia(uri: ipfsURL, mimetype: "image")]:[]

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.id,
        title: nftTitle,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: mediaArray,
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/testnet/account/0xfafb022e4e45634b/contract/SturdyItems
pub fun getSturdyItemsNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "SturdyItems",
        address: 0xfafb022e4e45634b,
        storage_path: "SturdyItems.CollectionStoragePath",
        public_path: "SturdyItems.CollectionPublicPath",
        public_collection_name: "SturdyItems.SturdyItemsCollectionPublic",
        external_domain: "https://sturdy.exchange/"
    )

    let col = owner.getCapability(SturdyItems.CollectionPublicPath)
        .borrow<&{SturdyItems.SturdyItemsCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowSturdyItem(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.tokenTitle,
        description: nft!.tokenDescription,
        external_domain_view_url: "https://sturdy.exchange/secondary-sale/".concat(nft!.id.toString()),
        token_uri: nft!.tokenURI,
        media: [],
        metadata: {
          "typeID": nft!.typeID.toString(),
          "artist": nft!.artist,
          "editionCount": SturdyItems.totalSupply.toString(),
          "secondaryRoyalty": nft!.secondaryRoyalty,
          "platformMintedOn": nft!.platformMintedOn
        }
    )
}

// https://flow-view-source.com/testnet/account/0x5511546363e3daa2/contract/TicalUniverse
pub fun getTicalUniverse(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TicalUniverse",
        address: 0x5511546363e3daa2,
        storage_path: "TicalUniverse.CollectionStoragePath",
        public_path: "TicalUniverse.CollectionPublicPath",
        public_collection_name: "TicalUniverse.TicalUniverseCollectionPublic",
        external_domain: "tunegonft.com"
    )

    let col = owner.getCapability(TicalUniverse.CollectionPublicPath)
        .borrow<&{TicalUniverse.TicalUniverseCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }

    let data = nft!.data
    let itemMetadata = TicalUniverse.getItemMetadata(itemId: data.itemId)!
    let editionNumber = data.serialNumber!
    let editionCount = TicalUniverse.getNumberCollectiblesInEdition(setId: data.setId, itemId: data.itemId)!

    var metadata = itemMetadata
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }
    rawMetadata["editionNumber"] = editionNumber.toString()
    rawMetadata["editionCount"] = editionCount.toString()
    rawMetadata["royaltyAddress"] = "0x3691a2fcb9626f20"
    rawMetadata["royaltyPercentage"] = "5.0"


    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: itemMetadata["Title"],
        description: itemMetadata["Description"],
        external_domain_view_url: "https://tunegonft.com/collectible/".concat(nft!.uuid.toString()),
        token_uri: nil,
        media: [ NFTMedia(uri: itemMetadata["Asset"]!, mimetype: "video/mp4") ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/testnet/account/0x8c7e52f597aa6117/contract/Gear
pub fun getGear(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Gear",
        address: 0x8c7e52f597aa6117,
        storage_path: "Gear.CollectionStoragePath",
        public_path: "Gear.CollectionPublicPath",
        public_collection_name: "Gear.GearCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(Gear.CollectionPublicPath)
        .borrow<&{Gear.GearCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowGear(id: id)
    if nft == nil { return nil }

    let gearSku = Gear.gearSKUs[nft.skuId]
    var gearSkuMeta = gearSku!.metadata

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: gearSkuMeta!["title"],
        description: gearSkuMeta!["description"],
        external_domain_view_url: gearSkuMeta!["domain_url"],
        token_uri: Gear.baseURI,
        media: [NFTMedia(uri: gearSkuMeta!["img"], mimetype: "image")],
        metadata: {},
    )
}

// https://flow-view-source.com/testnet/account/0x8c7e52f597aa6117/contract/ProShop_5
pub fun getProShop5(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ProShop_5",
        address: 0x8c7e52f597aa6117,
        storage_path: "ProShop_5.CollectionStoragePath",
        public_path: "ProShop_5.CollectionPublicPath",
        public_collection_name: "ProShop_5.ProShopCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(ProShop_5.CollectionPublicPath)!.borrow<&{ProShop_5.ProShopCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowProShop(id: id)
    if nft == nil { return nil }
    let metadata = nft!.metadata
    
     return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: metadata!["description"],
        external_domain_view_url: metadata!["domain_url"],
        token_uri: ProShop_5.baseURI,
        media: [NFTMedia(uri: metadata!["img"], mimetype: "image")],
        metadata: {},
     )
}

// https://flow-view-source.com/mainnet/account/0x5dfbd0d5aba6acf7/contract/QRLNFT
pub fun getQRLNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "QRL",
        address: 0x5dfbd0d5aba6acf7,
        storage_path: "QRLNFT.CollectionStoragePath",
        public_path: "QRLNFT.CollectionPublicPath",
        public_collection_name: "QRLNFT.QRLNFTCollectionPublic",
        external_domain: "https://swaychain.com/"
    )

    let col = owner.getCapability(QRLNFT.CollectionPublicPath)
        .borrow<&{QRLNFT.QRLNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowQRLNFT(id: id)
    if nft == nil { return nil }

    return NFTData(
	@@ -3028,14 +3028,13 @@ pub fun getQRLNFT(owner: PublicAccount, id: UInt64): NFTData? {
        media: [NFTMedia(uri: nft!.thumbnail, mimetype: "image")],
        metadata: {
            "name": nft!.name,
            "message": nft!.title,
            "description": nft!.description,
            "thumbnail": nft!.thumbnail
        }
    )
}

// https://flow-view-source.com/testnet/account/0x5dfbd0d5aba6acf7/contract/MaxarNFT
pub fun getMaxarNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Maxar",
        address: 0xa4e9020ad21eb30b,
        storage_path: "MaxarNFT.CollectionStoragePath",
        public_path: "MaxarNFT.CollectionPublicPath",
        public_collection_name: "MaxarNFT.MaxarNFTCollectionPublic",
        external_domain: "https://nft.maxar.com/"
    )

    let col = owner.getCapability(MaxarNFT.CollectionPublicPath)
        .borrow<&{MaxarNFT.MaxarNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowNFT(id: id)
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
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x921ea449dffec68a/contract/Flovatar
pub fun getFlovatarNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Flovatar",
        address: 0x9392a4a7c3f49a0b,
        storage_path: "Flovatar.CollectionStoragePath",
        public_path: "Flovatar.CollectionPublicPath",
        public_collection_name: "Flovatar.CollectionPublic",
        external_domain: "https://www.flovatar.com"
    )

    let col = owner.getCapability(Flovatar.CollectionPublicPath)
        .borrow<&{Flovatar.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFlovatar(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String?} = {}
    let metadata = nft!.getMetadata()
    rawMetadata["series"] = metadata.series.toString()
    rawMetadata["combination"] = metadata.combination
    rawMetadata["creatorAddress"] = metadata.creatorAddress.toString()
    rawMetadata["rareCount"] = metadata.rareCount.toString()
    rawMetadata["epicCount"] = metadata.epicCount.toString()
    rawMetadata["legendaryCount"] = metadata.legendaryCount.toString()
    rawMetadata["accessoryId"] = nft!.getAccessory() != nil  ? nft!.getAccessory()!.toString() : ""
    rawMetadata["hatId"] = nft!.getHat() != nil  ? nft!.getHat()!.toString() : ""
    rawMetadata["eyeglassesId"] = nft!.getEyeglasses() != nil ? nft!.getEyeglasses()!.toString() : ""
    rawMetadata["backgroundId"] = nft!.getBackground() != nil  ? nft!.getBackground()!.toString() : ""

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.id,
        title: "Flovatar",
        description: nil,
        external_domain_view_url: "https://flovatar.com/flovatars/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: "https://flovatar.com/api/image/".concat(nft!.id.toString()), mimetype: "video" )],
        metadata: rawMetadata
    )
}



// https://flow-view-source.com/mainnet/account/0x921ea449dffec68a/contract/FlovatarComponent
pub fun getFlovatarComponentNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(FlovatarComponent.CollectionPublicPath)
        .borrow<&{FlovatarComponent.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowComponent(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String?} = {}
    let componentTemplate = FlovatarComponentTemplate.getComponentTemplate(id: nft!.templateId)!
    rawMetadata["templateId"] = componentTemplate.id.toString()
    rawMetadata["name"] = componentTemplate.name
    rawMetadata["description"] = componentTemplate.description
    rawMetadata["category"] = componentTemplate.category
    rawMetadata["rarity"] = componentTemplate.rarity


    let contract = NFTContractData(
        name: "FlovatarComponent",
        address: 0x9392a4a7c3f49a0b,
        storage_path: "FlovatarComponent.CollectionStoragePath",
        public_path: "FlovatarComponent.CollectionPublicPath",
        public_collection_name: "FlovatarComponent.CollectionPublic",
        external_domain: "https://www.flovatar.com"
    )

    return NFTData(
        contract: contract,
        id: nft!.mint,
        uuid: nft!.id,
        title: "Flovatar Flobit",
        description: nil,
        external_domain_view_url: "https://flovatar.com/components/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: "https://flovatar.com/api/image/template/".concat(nft!.templateId.toString()), mimetype: "image" )],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/testnet/account/0x734061e710725233/contract/ByteNextMedalNFT
pub fun getByteNextMedalNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ByteNextMedalNFT",
        address: 0x734061e710725233,
        storage_path: "ByteNextMedalNFT.CollectionStoragePath",
        public_path: "ByteNextMedalNFT.CollectionPublicPath",
        public_collection_name: "ByteNextMedalNFT.CollectionPublic",
        external_domain: "https://app.bytenext.io"
    )

    let col = owner.getCapability(ByteNextMedalNFT.CollectionPublicPath)
        .borrow<&{ByteNextMedalNFT.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMedalNFT(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String} = {}
    let metadata = nft!.getMetadata()
    rawMetadata["name"] = metadata["name"] ?? ""
    rawMetadata["level"] = metadata["level"] ?? ""
    rawMetadata["metaURI"] = metadata["metaURI"] ?? ""

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: rawMetadata["name"],
        description: rawMetadata["name"],
        external_domain_view_url: rawMetadata["metaURI"],
        token_uri: nil,
        media: [NFTMedia(uri: rawMetadata["metaURI"], mimetype: "image")],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/CNN_NFT
pub fun getCnnNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "CNN_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "CNN_NFT.CollectionStoragePath",
        public_path: "CNN_NFT.CollectionPublicPath",
        public_collection_name: "CNN_NFT.CNN_NFTCollectionPublic",
        external_domain: "https://vault.cnn.com/",
    )

    let col = owner.getCapability(CNN_NFT.CollectionPublicPath)
        .borrow<&{CNN_NFT.CNN_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCNN_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = CNN_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = CNN_NFT.getSeriesMetadata(
        seriesId: CNN_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = CNN_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = CNN_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = setMeta!["external_url"]!.concat("tokens/").concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x8b148183c28ff88f/contract/Gaia
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

    let nft = col!.borrowGaiaNFT(id: id)
    if nft == nil { return nil }

    let metadata = Gaia.getTemplateMetaData(templateID: nft!.data.templateID)

    // Populate Gaia NFT data attributes into the metadata
    metadata!.insert(key: "setID", nft!.data.setID.toString())
    metadata!.insert(key: "templateID", nft!.data.templateID.toString())
    metadata!.insert(key: "mintNumber", nft!.data.mintNumber.toString())

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: metadata!["uri"],
        token_uri: nil,
        media: [NFTMedia(uri: metadata!["img"], mimetype: "image")],
        metadata: rawMetadata,
    )
}

pub fun stringStartsWith(string: String, prefix: String): Bool {
    if(string.length < prefix.length) {
        return false
    }

    let beginning = string.slice(from: 0, upTo: prefix.length)

    let prefixArray = prefix.utf8
    let beginningArray = beginning.utf8

    for index, element in prefixArray {
        if(beginningArray[index] != prefixArray[index]) {
            return false
        }
    }

    return true
}

// https://flow-view-source.com/mainnet/account/0x86b4a0010a71cfc3/contract/Beam
pub fun getBeam(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        if stringStartsWith(string: metadataUrl, prefix: ipfsScheme) || stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
            mediaUrl = metadataUrl
        }
        else if metadataUrl.length > 0 {
            mediaUrl = ipfsScheme.concat(metadataUrl)
        }
    }

    var domainUrl: String? = nil
    if metadata!["domainUrl"] != nil {
        let metadataDomainUrl = metadata!["domainUrl"]!
        if stringStartsWith(string: metadataDomainUrl, prefix: httpsScheme) {
            domainUrl = metadataDomainUrl
        }
        else if metadataDomainUrl.length > 0 {
            domainUrl = httpsScheme.concat(metadataDomainUrl)
        }
    }

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: domainUrl,
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeichtxzrocxo7ec5qybfxxlyod5bbymblitjwb2aalv2iyhe42pk4e/Frightclub.jpg", mimetype:"image/jpeg")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x6d008a788fc27265/contract/Crave
pub fun getCrave(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        if stringStartsWith(string: metadataUrl, prefix: ipfsScheme) || stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
            mediaUrl = metadataUrl
        }
        else if metadataUrl.length > 0 {
            mediaUrl = ipfsScheme.concat(metadataUrl)
        }
    }

    var domainUrl: String? = nil
    if metadata!["domainUrl"]  != nil {
        let metadataDomainUrl = metadata!["domainUrl"]!
        if stringStartsWith(string: metadataDomainUrl, prefix: httpsScheme) {
            domainUrl = metadataDomainUrl
        }
        else if metadataDomainUrl.length > 0 {
            domainUrl = httpsScheme.concat(metadataDomainUrl)
        }
    }

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

   return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: domainUrl,
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeiedrlfjykj4svmaka7jdxnhr3osigtudyrhitxsf7ska5ljeiwlxa/Crave Critics Banner.jpg", mimetype:"image/jpeg")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0xed398881d9bf40fb/contract/CricketMoments
pub fun getCricketMoments(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(CricketMoments.CollectionPublicPath)
        .borrow<&{CricketMoments.CricketMomentsCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowCricketMoment(id: id){
        let contract = NFTContractData(
            name: "CricketMoments",
            address: 0xed398881d9bf40fb,
            storage_path: "CricketMoments.CollectionStoragePath",
            public_path: "CricketMoments.CollectionPublicPath",
            public_collection_name: "CricketMoments.CricketMomentsCollectionPublic",
            external_domain: ""
        )

        let metadata = nft!.getMetadata()
        let rawMetadata: {String:String?} = {}
        for key in metadata!.keys {
            rawMetadata.insert(key: key, metadata![key])
        }

        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: nil,
            description: metadata["description"],
            external_domain_view_url: nil,
            token_uri: "https://gateway.pinata.cloud/ipfs/".concat(metadata["ipfs"]!),
            media: [],
            metadata: rawMetadata,
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

        let contract = NFTContractData(
            name: "Everbloom",
            address: 0xe703f7fee6400754,
            storage_path: "Everbloom.CollectionStoragePath",
            public_path: "Everbloom.CollectionPublicPath",
            public_collection_name: "Everbloom.PrintCollectionPublic",
            external_domain: "https://web.everbloom.app/"
        )
        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: nil,
            description: nil,
            external_domain_view_url: nil,
            token_uri:  "https://everbloom-fcl-service.herokuapp.com/v1/nft/".concat(nft!.id.toString()),
            media: [],
            metadata: {},
        )
    }
    return nil

}

// https://flow-view-source.com/mainnet/account/0xc38aea683c0c4d38/contract/Eternal
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

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

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
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x82b54037a8f180cf/contract/Shard
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
        let contract = NFTContractData(
            name: "FantastecNFT",
            address: 0x2e1ee1e7a96826ce,
            storage_path: "FantastecNFT.CollectionStoragePath",
            public_path: "FantastecNFT.CollectionPublicPath",
            public_collection_name: "FantastecNFT.FantastecNFTCollectionPublic",
            external_domain: ""
        )

        let rawMetadata: {String:String?} = {}
        for key in nft.metadata.keys {
            rawMetadata.insert(key: key, nft.metadata[key])
        }

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
            metadata: rawMetadata,
        )
    }
    return nil

}

// https://flow-view-source.com/mainnet/account/0x444f5ea22c6ea12c/contract/Vouchers
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
            "typeID": nft!.typeID.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x23dddd854fcc8c6f/contract/KOTD
pub fun getKOTD(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var mediaUrl: String? = nil
    if metadata!["mediaUrl"]  != nil {
        let metadataUrl = metadata!["mediaUrl"]!
        if stringStartsWith(string: metadataUrl, prefix: ipfsScheme) || stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
            mediaUrl = metadataUrl
        }
        else if metadataUrl.length > 0 {
             mediaUrl = ipfsScheme.concat(metadataUrl)
        }
    }

    var domainUrl: String? = nil
    if metadata!["domainUrl"]  != nil {
        let metadataDomainUrl = metadata!["domainUrl"]!
        if stringStartsWith(string: metadataDomainUrl, prefix: httpsScheme) {
            domainUrl = metadataDomainUrl
        }
        else if metadataDomainUrl.length > 0 {
            domainUrl = httpsScheme.concat(metadataDomainUrl)
        }
    }

    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata!["title"],
        description: metadata!["description"],
        external_domain_view_url: domainUrl,
        token_uri: nil,
        media: [NFTMedia(uri: mediaUrl, mimetype: metadata!["mediaType"]),
            NFTMedia(uri: "ipfs://bafybeidy62mofvdpzr5gujq57kcpm27pciqx33pahxbfuwgzea646k2nay/s1_poster.jpg", mimetype:"image/jpeg")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0xabd6e80be7e9682c/contract/KlktnNFT
pub fun getKlktnNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(KlktnNFT.CollectionPublicPath)
        .borrow<&{KlktnNFT.KlktnNFTCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowKlktnNFT(id: id){

        let metadata = nft!.getNFTMetadata()

            let contract = NFTContractData(
            name: "KlktnNFT",
            address: 0xabd6e80be7e9682c,
            storage_path: "KlktnNFT.CollectionStoragePath",
            public_path: "KlktnNFT.CollectionPublicPath",
            public_collection_name: "KlktnNFT.KlktnNFTCollectionPublic",
            external_domain: ""
        )

        let rawMetadata: {String:String?} = {}
        for key in metadata!.keys {
            rawMetadata.insert(key: key, metadata![key])
        }

        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: metadata["name"],
            description:metadata["description"],
            external_domain_view_url: nil,
            token_uri: nil,
            media: [NFTMedia(uri: metadata["media"], mimetype: metadata["mimeType"])],
            metadata: rawMetadata,
        )
    }
    return nil

}

// https://flow-view-source.com/mainnet/account/0xabd6e80be7e9682c/contract/KlktnNFT2
pub fun getKlktnNFT2(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(KlktnNFT2.CollectionPublicPath)
        .borrow<&{KlktnNFT2.KlktnNFTCollectionPublic}>()
    if col == nil { return nil }

    if let nft = col!.borrowKlktnNFT(id: id){

        let template = nft!.getFullMetadata()

            let contract = NFTContractData(
            name: "KlktnNFT2",
            address: 0xabd6e80be7e9682c,
            storage_path: "KlktnNFT2.CollectionStoragePath",
            public_path: "KlktnNFT2.CollectionPublicPath",
            public_collection_name: "KlktnNFT2.KlktnNFTCollectionPublic",
            external_domain: ""
        )

        let rawMetadata: {String:String?} = {}
        for key in template.metadata.keys {
            rawMetadata.insert(key: key, template.metadata[key])
        }

        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: template.metadata["name"] ?? "",
            description:template.metadata["description"] ?? "",
            external_domain_view_url: nil,
            token_uri: template.metadata["uri"] ?? "",
            media: [NFTMedia(uri: template.metadata["media"] ?? "", mimetype: template.metadata["mimeType"] ?? "")],
            metadata: rawMetadata,
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

    let contract = NFTContractData(
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
            "creator": data.creator.toString(),
            "cpower": data.cpower.toString(),
            "cid": data.cid,
            "generation": data.generation.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf6fcbef550d97aa5/contract/Mynft
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

    let metadata = nft!.getMetadata()
    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: metadata["url"],
        token_uri: nil,
        media: [],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/RaceDay_NFT
pub fun getRaceDay(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "RaceDay_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "RaceDay_NFT.CollectionStoragePath",
        public_path: "RaceDay_NFT.CollectionPublicPath",
        public_collection_name: "RaceDay_NFT.RaceDay_NFTCollectionPublic",
        external_domain: "https://racedaynft.com/"
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

    let seriesId = RaceDay_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = RaceDay_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = setMeta!["external_url"]!.concat("/tokens/").concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/Andbox_NFT
pub fun getAndbox_NFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Andbox_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "Andbox_NFT.CollectionStoragePath",
        public_path: "Andbox_NFT.CollectionPublicPath",
        public_collection_name: "Andbox_NFT.Andbox_NFTCollectionPublic",
        external_domain: "https://andbox.shops.nftbridge.com/"
    )

    let col = owner.getCapability(Andbox_NFT.CollectionPublicPath)
        .borrow<&{Andbox_NFT.Andbox_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowAndbox_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = Andbox_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = Andbox_NFT.getSeriesMetadata(
        seriesId: Andbox_NFT.getSetSeriesId(setId: nft!.setId)!
    )

    let seriesId = Andbox_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = Andbox_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://andbox.shops.nftbridge.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/RareRooms_NFT
pub fun getRareRooms(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "RareRooms_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "RareRooms_NFT.CollectionStoragePath",
        public_path: "RareRooms_NFT.CollectionPublicPath",
        public_collection_name: "RareRooms_NFT.RareRooms_NFTCollectionPublic",
        external_domain: "https://rarerooms.io/"
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

    let seriesId = RareRooms_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = RareRooms_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://rarerooms.io/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )

}

// https://flow-view-source.com/mainnet/account/0x8de96244f54db422/contract/SportsIconCollectible
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

    let collectible = col!.borrowCollectible(id: id)
    let nft = col!.borrowNFT(id: id)
    if nft == nil { return nil }

    let setData = SportsIconCollectible.getSetMetadataForNFTByUUID(uuid: nft!.uuid)!
    let editionData = SportsIconCollectible.getCollectibleDataForNftByUUID(uuid: nft!.uuid)!
    let setMetadata = setData.getMetadata()

    let rawMetadata: {String:String?} = {}
    for key in setMetadata.keys {
        rawMetadata.insert(key: key, setMetadata[key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMetadata["title"],
        description: setMetadata["description"],
        external_domain_view_url: "https://app.sportsicon.com/collectible/".concat(editionData.getSetID().toString()).concat("/").concat(editionData.getEditionNumber().toString()),
        token_uri: nil,
        media: [NFTMedia(uri: setMetadata!["contentURL"], mimetype: "video/mp4")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x5b82f21c0edf76e3/contract/StarlyCard
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

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.card.title,
        description: metadata.card.description,
        external_domain_view_url: metadata.url,
        token_uri: nil,
        media: [NFTMedia(uri: metadata.card.mediaSizes[0].url, mimetype: metadata.card.mediaType)],
        metadata: {
            "id": nft!.starlyID,
            "rarity": metadata.card.rarity,
            "collectionID": metadata.collection.id,
            "collectionTitle": metadata.collection.title,
            "cardID": metadata.card.id.toString(),
            "edition": metadata.edition.toString(),
            "editions": metadata.card.editions.toString(),
            "previewUrl": metadata.previewUrl,
            "creatorName": metadata.collection.creator.name,
            "creatorUsername": metadata.collection.creator.username
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x98c9c2e548b84d31/contract/CaaPass
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

// https://flow-view-source.com/mainnet/account/0x0d9bc5af3fc0c2e3/contract/TuneGO
pub fun getTuneGO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TuneGO",
        address: 0x0d9bc5af3fc0c2e3,
        storage_path: "TuneGO.CollectionStoragePath",
        public_path: "TuneGO.CollectionPublicPath",
        public_collection_name: "TuneGO.TuneGOCollectionPublic",
        external_domain: "tunegonft.com"
    )

    let col = owner.getCapability(TuneGO.CollectionPublicPath)
        .borrow<&{TuneGO.TuneGOCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }

    let data = nft!.data
    let itemMetadata = TuneGO.getItemMetadata(itemId: data.itemId)!
    let editionNumber = data.serialNumber!
    let editionCount = TuneGO.getNumberCollectiblesInEdition(setId: data.setId, itemId: data.itemId)!

    var metadata = itemMetadata
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }
    rawMetadata["editionNumber"] = editionNumber.toString()
    rawMetadata["editionCount"] = editionCount.toString()
    rawMetadata["royaltyAddress"] = "0x8039244113ff6251"
    rawMetadata["royaltyPercentage"] = "5.0"

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: itemMetadata["Title"],
        description: itemMetadata["Description"],
        external_domain_view_url: "https://tunegonft.com/collectible/".concat(nft!.uuid.toString()),
        token_uri: nil,
        media: [ NFTMedia(uri: itemMetadata["Media URL"]!, mimetype: "video/mp4") ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0xfef48806337aabf1/contract/TicalUniverse
pub fun getTicalUniverse(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TicalUniverse",
        address: 0xfef48806337aabf1,
        storage_path: "TicalUniverse.CollectionStoragePath",
        public_path: "TicalUniverse.CollectionPublicPath",
        public_collection_name: "TicalUniverse.TicalUniverseCollectionPublic",
        external_domain: "tunegonft.com"
    )

    let col = owner.getCapability(TicalUniverse.CollectionPublicPath)
        .borrow<&{TicalUniverse.TicalUniverseCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }

    let data = nft!.data
    let itemMetadata = TicalUniverse.getItemMetadata(itemId: data.itemId)!
    let editionNumber = data.serialNumber!
    let editionCount = TicalUniverse.getNumberCollectiblesInEdition(setId: data.setId, itemId: data.itemId)!

    var metadata = itemMetadata
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }
    rawMetadata["editionNumber"] = editionNumber.toString()
    rawMetadata["editionCount"] = editionCount.toString()
    rawMetadata["royaltyAddress"] = "0x8039244113ff6251"
    rawMetadata["royaltyPercentage"] = "5.0"

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: itemMetadata["Title"],
        description: itemMetadata["Description"],
        external_domain_view_url: "https://tunegonft.com/collectible/".concat(nft!.uuid.toString()),
        token_uri: nil,
        media: [ NFTMedia(uri: itemMetadata["Asset"]!, mimetype: "video/mp4") ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x2d2750f240198f91/contract/MatrixWorldFlowFestNFT
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

// https://flow-view-source.com/mainnet/account/0x0b2a3299cc857e29/contract/TopShot
pub fun getTopShot(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["FullName"],
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: rawMetadata,
    )
}



// https://flow-view-source.com/mainnet/account/0x233eb012d34b0070/contract/Domains
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
    let rawMetadata: {String:String?} = {}
    for key in nft!.getAllTexts().keys {
        rawMetadata.insert(key: key,nft!.getAllTexts()[key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: name,
        description: nil,
        external_domain_view_url: viewURL,
        token_uri: nil,
        media: [NFTMedia(uri: URI, mimetype: "image")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x81e95660ab5308e1/contract/TFCItems
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
    let rawMetadata: {String:String?} = {}
    for key in metadata!.keys {
        rawMetadata.insert(key: key, metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["Title"]!,
        description: nil,
        external_domain_view_url: "thefootballclub.com",
        token_uri: nil,
        media: [NFTMedia(uri: metadata["URL"]!, mimetype: "image")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x34f2bf4a80bb0f69/contract/GooberXContract
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

    let rawMetadata: {String:String?} = {}

    for key in nft!.data!.metadata!.keys {
        if nft!.data!.metadata![key]!.getType().isSubtype(of: Type<Number>()) {
            rawMetadata.insert(key: key, (nft!.data!.metadata![key]! as! Number).toString())
        } else if nft!.data!.metadata![key]!.getType().isSubtype(of: Type<String>()) {
            rawMetadata.insert(key: key, (nft!.data!.metadata![key]! as! String))
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: title,
        description: description,
        external_domain_view_url: external_domain_view_url,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.data!.uri, mimetype: "image")],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x20187093790b9aef/contract/MintStoreItem
// https://flow-view-source.com/testnet/account/0x985d410b577fd4a1/contract/MintStoreItem
pub fun getMintStoreItem(owner: PublicAccount, id: UInt64): NFTData? {


    let col = owner.getCapability(MintStoreItem.CollectionPublicPath)
        .borrow<&{MintStoreItem.MintStoreItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMintStoreItem(id: id)
    if nft == nil { return nil }

    let editionData = MintStoreItem.EditionData(editionID: nft!.data.editionID)!
    let description = editionData!.metadata["description"]!;
    let merchantName = MintStoreItem.getMerchant(merchantID:nft!.data.merchantID)!

     var external_domain = ""
     switch merchantName {
        case "Bulls":
            external_domain =  "https://bulls.mint.store"
            break;
        case "Charlotte Hornets":
            external_domain =  "https://hornets.mint.store"
            break;
        default:
            external_domain =  ""
     }

     if editionData!.metadata["nftType"]! == "Type C" {
         external_domain =  "https://misa.art/collections/nft"
     }


    let contract = NFTContractData(
        name: merchantName,
        address: 0x985d410b577fd4a1,
        storage_path: "MintStoreItem.CollectionStoragePath",
        public_path: "MintStoreItem.CollectionPublicPath",
        public_collection_name: "MintStoreItem.MintStoreItemCollectionPublic",
        external_domain: external_domain
    )


    let rawMetadata: {String: String?} = {
        "merchantID": nft!.data.merchantID.toString(),
        "merchantName": merchantName,
        "editionID": editionData!.editionID.toString(),
        "numberOfItemsMinted": editionData!.numberOfItemsMinted.toString(),
        "printingLimit": editionData!.printingLimit!.toString(),
        "editionNumber": nft!.data.editionNumber.toString(),
        "description": editionData!.metadata["description"]!,
        "name":editionData!.metadata["name"]!,
        "nftType":editionData!.metadata["nftType"]!,
        "editionCount": editionData!.printingLimit!.toString(),
        "royaltyAddress": editionData!.metadata["royaltyAddress"],
        "royaltyPercentage": editionData!.metadata["royaltyPercentage"]
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: editionData.name,
        description: description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: editionData!.metadata["mediaURL"], mimetype: editionData!.metadata["mimetype"])],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x7859c48816bfea3c/contract/BnGNFT
pub fun getBiscuitsNGroovy(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContractData(
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

    let rawMetadata: {String:String?} = {}
    for key in nft!.metadata!.keys {
        rawMetadata.insert(key: key, nft!.metadata![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nft!.metadata!["metadata_url"],
        token_uri: nil,
        media: [],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0xabda6627c70c7f52/contract/GeniaceNFT
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
        external_domain_view_url: "https://www.geniace.com/product/".concat(nft!.id.toString()),
        token_uri: nil,
        media: getNFTMedia(),
        metadata: {
            "celebrityName": nft!.metadata!.celebrityName,
            "artist": nft!.metadata!.artist,
            "rarity": getRarity()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf5b0eb433389ac3f/contract/Collectible
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
        uuid: nft!.uuid,
        title: nft!.metadata!.name,
        description: nft!.metadata!.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.metadata!.link, mimetype: "video")],
        metadata: {
            "author": nft!.metadata!.author,
            "edition": nft!.metadata!.edition.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x8ea44ab931cac762
pub fun getInceptionAnimals(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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

    let rawMetadata: {String:String?} = {}
    for key in nft!.getNFTTemplate()!.getMetadata()!.keys {
        rawMetadata.insert(key: key, nft!.getNFTTemplate()!.getMetadata()![key])
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.getNFTTemplate()!.description,
        external_domain_view_url: nil,
        token_uri: nft!.getNFTTemplate()!.getMetadata()["uri"]!,
        media: [NFTMedia(uri: nft!.getNFTTemplate()!.getMetadata()["uri"]!, mimetype: nft!.getNFTTemplate()!.getMetadata()["mimetype"]!)],
        metadata: rawMetadata,
    )
}

// https://flow-view-source.com/mainnet/account/0x6831760534292098/contract/OneFootballCollectible
pub fun getOneFootballCollectible(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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
    let contract = NFTContractData(
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
    let contract = NFTContractData(
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
    let contract = NFTContractData(
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
            "creator": miamiData.creator.toString(),
            "season": miamiData.season
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf61e40c19db2a9e2/contract/HaikuNFT
pub fun getBitku(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
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
        uuid: nft!.uuid,
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
    let contract = NFTContractData(
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
    let contract = NFTContractData(
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
        uuid: nft!.uuid,
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
    let contract = NFTContractData(
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
        uuid: nft!.uuid,
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
    let contract = NFTContractData(
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
    let contract = NFTContractData(
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
            "coCreator": itemData.coCreator.toString(),
            "season": itemMetadata["season"]!.metadataValue
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x62b3063fbe672fc8/contract/ZeedzINO
pub fun getZeedzINO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ZeedzINO",
        address: 0x62b3063fbe672fc8,
        storage_path: "/storage/ZeedzINOCollection",
        public_path: "/public/ZeedzINOCollection",
        public_collection_name: "ZeedzINO.ZeedzCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(/public/ZeedzINOCollection)
        .borrow<&{ZeedzINO.ZeedzCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowZeedle(id: id)
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
            "typeID": nft!.typeID.toString(),
            "evoultionStage": nft!.evolutionStage.toString(),
            "serialNumber": nft!.serialNumber,
            "editionNumber": nft!.edition.toString(),
            "editionCount": nft!.editionCap.toString(),
            "rarity": nft!.rarity,
            "carbonOffset": nft!.carbonOffset.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0xf3cc54f4d91c2f6c/contract/Kicks
pub fun getKicksSneaker(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ClosedSrc - NFTLX",
        address: 0xf3cc54f4d91c2f6c,
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

    let rawMetadata = nft!.getMetadata()
    var metadata: {String: String?} = {}
    var media: [NFTMedia] = []
    let description = nft!.setID == 0 ? "Union Jordan 4 'Off Noir' x Nike Dunk" : nft!.description()

    if let mediaValue = metadata["media"] {
        if let supportedMedia = mediaValue as? {String: [String]} {
            for mediaType in supportedMedia.keys {
                for mediaURI in supportedMedia[mediaType]! {
                    media.append(NFTMedia(uri: mediaURI, mimetype: mediaType))
                }
            }
        }
    }

    for key in rawMetadata.keys {
        if rawMetadata[key]!.getType().isSubtype(of: Type<String>()) {
            metadata[key] = rawMetadata[key]! as! String
        } else if rawMetadata[key]!.getType().isSubtype(of: Type<Number>()) {
            metadata[key] = (rawMetadata[key]! as! Number).toString()
        } else if rawMetadata[key]!.getType() != Type<String>() {
            metadata.remove(key: key)
        }
    }

    if (!metadata.containsKey("editionNumber")) { metadata["editionNumber"] = nft!.setID == 0 ? nft!.id.toString() : nft!.instanceID.toString()  }
    if (!metadata.containsKey("editionCount")) { metadata["editionCount"] = Kicks.getSneakerSet(withID: nft!.setID)!.getTotalSupply().toString() }
    if (!metadata.containsKey("royaltyAddress")) { metadata["royaltyAddress"] = "0xf3cc54f4d91c2f6c" }
    if (!metadata.containsKey("royaltyPercentage")) { metadata["royaltyPercentage"] = "5" }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name(),
        description: description,
        external_domain_view_url: "https://www.nftlx.io/nft/".concat(nft!.id.toString()),
        token_uri: nil,
        media: media,
        metadata: metadata,
    )
}

// https://flow-view-source.com/testnet/account/0xa95b021cf8a30d80/contract/BarterYardPackNFT
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
    uuid: nft.uuid,
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
// https://flow-view-source.com/mainnet/account/0x28abb9f291cadaf2/contract/BarterYardClubWerewolf
pub fun getBarterYardClubWerewolf(owner: PublicAccount, id: UInt64): NFTData? {
  let contract = NFTContractData(
        name: "BarterYardClubWerewolf",
        address: 0x28abb9f291cadaf2,
        storage_path: "BarterYardClubWerewolf.CollectionStoragePath",
        public_path: "BarterYardClubWerewolf.CollectionPublicPath",
        public_collection_name: "BarterYardClubWerewolf.CollectionPublic",
        external_domain: "https://app.barteryard.club"
    )
    let collection = owner.getCapability<&{MetadataViews.ResolverCollection}>(BarterYardClubWerewolf.CollectionPublicPath).borrow()
        ?? panic("Could not borrow a reference to the collection")
    let nft = collection.borrowViewResolver(id: id)
    let view = nft.resolveView(Type<BarterYardClubWerewolf.CompleteDisplay>())!
    let display = view as! BarterYardClubWerewolf.CompleteDisplay

    let background = display.getAttributes()[0].value
    let fur = display.getAttributes()[1].value
    let body = display.getAttributes()[2].value
    let eyes = display.getAttributes()[4].value
    let glasses = display.getAttributes()[5].value
    let headgear = display.getAttributes()[6].value
    let item = display.getAttributes()[7].value
    let mouth = display.getAttributes()[3].value

    return NFTData(
      contract: contract,
      id: id,
      uuid: nil,
      title: display.name,
      description: display.description,
      external_domain_view_url: "https://barteryard.club/nft/".concat(id.toString()),
      token_uri: nil,
      media: [NFTMedia(uri: "https://ipfs.io/ipfs/".concat(display.thumbnail.cid).concat("/").concat(display.thumbnail.path!), mimetype: "image")],
      metadata: {
        "Background": background,
        "Fur": fur,
        "Body": body,
        "Eyes": eyes,
        "Glasses": glasses,
        "Headgear": headgear,
        "Item": item,
        "Mouth": mouth
      },
    )
}

// https://flow-view-source.com/mainnet/account/0x1600b04bf033fb99/contract/DayNFT
pub fun getDayNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DayNFT",
        address: 0x1600b04bf033fb99,
        storage_path: "DayNFT.CollectionStoragePath",
        public_path: "DayNFT.CollectionPublicPath",
        public_collection_name: "DayNFT.CollectionPublic",
        external_domain: "https://day-nft.io"
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
            "date": nft!.dateStr,
            "editionNumber": "1",
            "editionCount": "1",
            "royaltyAddress": "0x1600b04bf033fb99",
            "royaltyPercentage": "5.0"
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/Costacos_NFT
pub fun getCostacosNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Costacos_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "Costacos_NFT.CollectionStoragePath",
        public_path: "Costacos_NFT.CollectionPublicPath",
        public_collection_name: "Costacos_NFT.Costacos_NFT",
        external_domain: "https://costacoscollection.com/",
    )

    let col = owner.getCapability(Costacos_NFT.CollectionPublicPath)
        .borrow<&{Costacos_NFT.Costacos_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCostacos_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = Costacos_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = Costacos_NFT.getSeriesMetadata(
        seriesId: Costacos_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = Costacos_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = Costacos_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://shop.costacoscollection.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/Canes_Vault_NFT
pub fun getCanesVaultNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Canes_Vault_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "Canes_Vault_NFT.CollectionStoragePath",
        public_path: "Canes_Vault_NFT.CollectionPublicPath",
        public_collection_name: "Canes_Vault_NFT.Canes_Vault_NFT",
        external_domain: "https://www.canesvault.com/",
    )

    let col = owner.getCapability(Canes_Vault_NFT.CollectionPublicPath)
        .borrow<&{Canes_Vault_NFT.Canes_Vault_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCanes_Vault_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = Canes_Vault_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = Canes_Vault_NFT.getSeriesMetadata(
        seriesId: Canes_Vault_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = Canes_Vault_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = Canes_Vault_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = setMeta!["external_url"]!.concat("/tokens/").concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/AmericanAirlines_NFT
pub fun getAmericanAirlinesNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "AmericanAirlines_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "AmericanAirlines_NFT.CollectionStoragePath",
        public_path: "AmericanAirlines_NFT.CollectionPublicPath",
        public_collection_name: "AmericanAirlines_NFT.AmericanAirlines_NFT",
        external_domain: "",
    )

    let col = owner.getCapability(AmericanAirlines_NFT.CollectionPublicPath)
        .borrow<&{AmericanAirlines_NFT.AmericanAirlines_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowAmericanAirlines_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = AmericanAirlines_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = AmericanAirlines_NFT.getSeriesMetadata(
        seriesId: AmericanAirlines_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = AmericanAirlines_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = AmericanAirlines_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://americanairlines.nftbridge.com/tokens/".concat(nft!.id.toString())

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: setMeta!["image_file_type"]),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/The_Next_Cartel_NFT
pub fun getTheNextCartelNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "The_Next_Cartel_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "The_Next_Cartel_NFT.CollectionStoragePath",
        public_path: "The_Next_Cartel_NFT.CollectionPublicPath",
        public_collection_name: "The_Next_Cartel_NFT.The_Next_Cartel_NFT",
        external_domain: "https://thenextcartel.com/nft-store",
    )

    let col = owner.getCapability(The_Next_Cartel_NFT.CollectionPublicPath)
        .borrow<&{The_Next_Cartel_NFT.The_Next_Cartel_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowThe_Next_Cartel_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = The_Next_Cartel_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = The_Next_Cartel_NFT.getSeriesMetadata(
        seriesId: The_Next_Cartel_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = The_Next_Cartel_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = The_Next_Cartel_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://thenextcartel.shops.nftbridge.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/Atheletes_Unlimited_NFT
pub fun getAthletesUnlimitedNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Atheletes_Unlimited_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "Atheletes_Unlimited_NFT.CollectionStoragePath",
        public_path: "Atheletes_Unlimited_NFT.CollectionPublicPath",
        public_collection_name: "Atheletes_Unlimited_NFT.Atheletes_Unlimited_NFT",
        external_domain: "https://nft.auprosports.com/",
    )

    let col = owner.getCapability(Atheletes_Unlimited_NFT.CollectionPublicPath)
        .borrow<&{Atheletes_Unlimited_NFT.Atheletes_Unlimited_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowAtheletes_Unlimited_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = Atheletes_Unlimited_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = Atheletes_Unlimited_NFT.getSeriesMetadata(
        seriesId: Atheletes_Unlimited_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = Atheletes_Unlimited_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = Atheletes_Unlimited_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://nft.auprosports.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/Art_NFT
pub fun getArtNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Art_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "Art_NFT.CollectionStoragePath",
        public_path: "Art_NFT.CollectionPublicPath",
        public_collection_name: "Art_NFT.Art_NFT",
        external_domain: "",
    )

    let col = owner.getCapability(Art_NFT.CollectionPublicPath)
        .borrow<&{Art_NFT.Art_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowArt_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = Art_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = Art_NFT.getSeriesMetadata(
        seriesId: Art_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = Art_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = Art_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://art.nftbridge.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        },
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/DGD_NFT
pub fun getDGDNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DGD_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "DGD_NFT.CollectionStoragePath",
        public_path: "DGD_NFT.CollectionPublicPath",
        public_collection_name: "DGD_NFT.DGD_NFT",
        external_domain: "https://www.theplayerslounge.io/",
    )

    let col = owner.getCapability(DGD_NFT.CollectionPublicPath)
        .borrow<&{DGD_NFT.DGD_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDGD_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = DGD_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = DGD_NFT.getSeriesMetadata(
        seriesId: DGD_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = DGD_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = DGD_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://app.theplayerslounge.io/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        }
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
        external_domain_view_url: "https://bay.blocto.app/flow/gogoro/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: additional["mediaUrl"]!, mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": additional["rarity"]!,
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
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
        external_domain_view_url: "https://bay.blocto.app/flow/yahoo/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.mediaHash), mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": metadata.getAdditional()["rarity"]!,
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x758252ab932a3416/contract/YahooPartnersCollectible
pub fun getYahooPartnersCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "YahooPartnersCollectible",
        address: 0x758252ab932a3416,
        storage_path: "YahooPartnersCollectible.CollectionStoragePath",
        public_path: "YahooPartnersCollectible.CollectionPublicPath",
        public_collection_name: "YahooPartnersCollectible.CollectionPublic",
        external_domain: "https://tw.yahoo.com/",
    )

    let col = owner.getCapability(YahooPartnersCollectible.CollectionPublicPath)
        .borrow<&{YahooPartnersCollectible.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowYahooPartnersCollectible(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.name,
        description: metadata.description,
        external_domain_view_url: "https://bay.blocto.app/flow/yahoo-partners/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.mediaHash), mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": metadata.getAdditional()["rarity"]!,
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x910514afa41bfeac/contract/BlindBoxRedeemVoucher
pub fun getBlindBoxRedeemVoucherNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "BlindBoxRedeemVoucher",
        address: 0x910514afa41bfeac,
        storage_path: "BlindBoxRedeemVoucher.CollectionStoragePath",
        public_path: "BlindBoxRedeemVoucher.CollectionPublicPath",
        public_collection_name: "BlindBoxRedeemVoucher.CollectionPublic",
        external_domain: "https://flow.com/",
    )

    let col = owner.getCapability(BlindBoxRedeemVoucher.CollectionPublicPath)
        .borrow<&{BlindBoxRedeemVoucher.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowBlindBoxRedeemVoucher(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()!

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata.name,
        description: metadata.description,
        external_domain_view_url: "https://bay.blocto.app/flow/blindbox-voucher/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.mediaHash), mimetype: metadata.mediaType)
        ],
        metadata: {
            "rarity": metadata.getAdditional()["rarity"]!,
            "editionNumber": nft!.editionNumber.toString(),
            "editionCount": metadata.itemCount.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x85b8bbf926dcddfa/contract/NowggNFT
pub fun getNowggNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContractData(
        name: "NowggNFT",
        address: 0x85b8bbf926dcddfa,
        storage_path: "NowggNFT.CollectionStoragePath",
        public_path: "NowggNFT.CollectionPublicPath",
        public_collection_name: "NowggNFT.NowggNFTCollectionPublic",
        external_domain: "https://nft.now.gg/"
    )

    let col = owner.getCapability(NowggNFT.CollectionPublicPath)
        .borrow<&{NowggNFT.NowggNFTCollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowNowggNFT(id: id)

    if nft == nil { return nil }

    let nftInfo = nft!

    let metadata = nftInfo.getMetadata()!
    let nftTypeId = (metadata["nftTypeId"]! as! String)

    let externalViewUrl = "https://nft.now.gg/nft/".concat(nftTypeId)

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
            "clientName": metadata["clientName"]! as? String,
            "nftTypeId": metadata["nftTypeId"]! as? String,
            "creatorName": metadata["creatorName"]! as? String,
            "clientId": metadata["clientId"]! as? String,
            "maxCount": (metadata["maxCount"]! as? UInt64)!.toString(),
            "copyNumber": (metadata["copyNumber"]! as? UInt64)!.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x667a16294a089ef8/contract/SomePlaceCollectible
pub fun getSomePlaceCollectibleNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "SomePlaceCollectible",
        address: 0x667a16294a089ef8,
        storage_path: "SomePlaceCollectible.CollectionStoragePath",
        public_path: "SomePlaceCollectible.CollectionPublicPath",
        public_collection_name: "SomePlaceCollectible.CollectibleCollectionPublic",
        external_domain: "https://some.place",
    )

    let col = owner.getCapability(SomePlaceCollectible.CollectionPublicPath)
        .borrow<&{SomePlaceCollectible.CollectibleCollectionPublic}>()
    if col == nil { return nil }

    let optNft = col!.borrowCollectible(id: id)
    if optNft == nil { return nil }
    let nft = optNft!

    let setID = nft.setID
    let setMetadata = SomePlaceCollectible.getMetadataForSetID(setID: setID)!
    let editionMetadata = SomePlaceCollectible.getMetadataForNFTByUUID(uuid: nft.id)!

    return NFTData(
        contract: contract,
        id: nft.id,
        uuid: nft.uuid,
        title: editionMetadata.getMetadata()["title"] ?? setMetadata.getMetadata()["title"] ?? "",
        description: editionMetadata.getMetadata()["description"] ?? setMetadata.getMetadata()["description"] ?? "",
        external_domain_view_url: "https://some.place",
        token_uri: nil,
        media: [
            NFTMedia(uri: editionMetadata.getMetadata()["mediaURL"] ?? setMetadata.getMetadata()["mediaURL"] ?? "", mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft.editionNumber.toString(),
            "editionCount": setMetadata.getMaxNumberOfEditions().toString(),
            "royaltyAddress": "0x8e2e0ebf3c03aa88",
            "royaltyPercentage": "10.0"
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x24de869c5e40b2eb/contract/ARTIFACT
pub fun getARTIFACT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ARTIFACT",
        address: 0x24de869c5e40b2eb,
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
    metadata["royaltyAddress"] = "0xe9e563d7021d6eda"
    metadata["royaltyPercentage"] = "10.0"
    metadata["rarity"] = metadata["artifactRarityLevel"]!


    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

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
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x24de869c5e40b2eb/contract/ARTIFACTPack
pub fun getARTIFACTPack(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ARTIFACTPack",
        address: 0x24de869c5e40b2eb,
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
    metadata["royaltyAddress"] = "0xe9e563d7021d6eda"
    metadata["royaltyPercentage"] = "10.0"
    metadata["rarity"] = metadata["rarityLevel"]!

    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }


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
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x5892036f9111fbb8/contract/NftReality
pub fun getNftRealityNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "NftReality",
        address: 0x5892036f9111fbb8,
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

    let metadataView = nft!.resolveView(Type<NftReality.NftRealityMetadataView>())!
    let metadata = metadataView as! NftReality.NftRealityMetadataView

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://ipfs.io/ipfs/".concat(metadata.artwork).concat("/").concat("artwork"), mimetype: "image")
        ],
        metadata: {
            "editionNumber": metadata.unit.toString(),
            "editionCount": metadata.totalUnits.toString(),
            "company": metadata.company,
            "role": metadata.role,
            "description": metadata.description,
            "artwork": metadata.artwork,
            "logotype": metadata.logotype,
            "creator": metadata.creator,
            "creationDate": metadata.creationDate
        }
    )
}

// https://flow-view-source.com/mainnet/account/0xf20df769e658c257/contract/MatrixWorldAssetsNFT
pub fun getNftMatrixWorldAssetsNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "MatrixWorldAssetsNFT",
        address: 0xf20df769e658c257,
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
    let rawMetadata: {String:String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

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
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x8d4fa88ffa2d9117/contract/RacingTime
pub fun getRacingTimeNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "RacingTimeNFT",
        address: 0x8d4fa88ffa2d9117,
        storage_path: "RacingTime.CollectionStoragePath",
        public_path: "RacingTime.CollectionPublicPath",
        public_collection_name: "RacingTime.CollectionPublic",
        external_domain: "https://www.racingtime.io/"
    )

    let col = owner.getCapability(RacingTime.CollectionPublicPath)
        .borrow<&{RacingTime.RacingTimeCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowRacingTime(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: UInt64(nft!.data!.rewardID),
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: nft!.data!.ipfs, mimetype: "image")],
        metadata: {
            "rewardID": nft!.data!.rewardID.toString(),
            "typeID": nft!.data!.typeID.toString(),
            "serialNumber": nft!.data!.serialNumber.toString(),
            "ipfs": nft!.data!.ipfs
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x9d21537544d9123d/contract/Momentables
pub fun getMomentables(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Momentables",
        address: 0x9d21537544d9123d,
        storage_path: "Momentables.CollectionStoragePath",
        public_path: "Momentables.CollectionPublicPath",
        public_collection_name: "Momentables.MomentablesCollectionPublic",
        external_domain: "https://nextdecentrum.com"
    )

    let col = owner.getCapability(Momentables.CollectionPublicPath)
        .borrow<&{Momentables.MomentablesCollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowMomentables(id: id)
    if nft == nil { return nil }

    //let metadata = Gaia.getTemplateMetaData(templateID: nft!.data.templateID)
    let ipfsURL = "https://gateway.pinata.cloud/ipfs/".concat(nft!.imageCID);


    let traits = nft!.getTraits();
    let rawMetadata: {String:String?} = {}

    // Core metadata attributes
    rawMetadata.insert(key:"editionNumber", nft!.id.toString());
    rawMetadata.insert(key:"editionCount", "7006");
    rawMetadata.insert(key:"royaltyAddress", "0x7dc1aa82a2f8d409");
    rawMetadata.insert(key:"royaltyPercentage", "10.1");

    // NFT Traits metadata
    for key in traits.keys {
        let currentTrait = traits[key]!;
        for currentTraitKey in currentTrait.keys{
            rawMetadata.insert(key:key.concat("-").concat(currentTraitKey),currentTrait[currentTraitKey])
        }
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nft!.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: ipfsURL, mimetype: "image")],
        metadata: {
            "editionNumber": nft!.id.toString(),
            "editionCount": "7006",
            "royaltyAddress": "0x7dc1aa82a2f8d409",
            "royaltyPercentage": "10.0"
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x2068315349bdfce5/contract/GoatedGoats
pub fun getGoatedGoats(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "GoatedGoats",
        address: 0x2068315349bdfce5,
        storage_path: "GoatedGoats.CollectionStoragePath",
        public_path: "GoatedGoats.CollectionPublicPath",
        public_collection_name: "GoatedGoats.GoatCollectionPublic",
        external_domain: "https://goatedgoats.com/"
    )

    let col = owner.getCapability(GoatedGoats.CollectionPublicPath)
        .borrow<&{MetadataViews.ResolverCollection,GoatedGoats.GoatCollectionPublic}>()
    if col == nil { return nil }

    let optNft = col!.borrowGoat(id: id)
    if optNft == nil { return nil }
    let nft = optNft!

    let displayView = nft.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: nft.id,
        uuid: nft.uuid,
        title: displayView.name,
        description: displayView.description,
        external_domain_view_url: "https://goatedgoats.com",
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://goatedgoats.mypinata.cloud/ipfs/".concat((displayView.thumbnail as! MetadataViews.IPFSFile).cid), mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft.goatID.toString(),
            "editionCount": "10000",
            "royaltyAddress": "0xd7081a5c66dc3e7f",
            "royaltyPercentage": "5.0"
        }
    )
 }

// https://flow-view-source.com/mainnet/account/0x2068315349bdfce5/contract/GoatedGoatsTrait
pub fun getGoatedGoatsTrait(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "GoatedGoatsTrait",
        address: 0x2068315349bdfce5,
        storage_path: "GoatedGoatsTrait.CollectionStoragePath",
        public_path: "GoatedGoatsTrait.CollectionPublicPath",
        public_collection_name: "GoatedGoatsTrait.TraitCollectionPublic",
        external_domain: "https://goatedgoats.com/"
    )

    let col = owner.getCapability(GoatedGoatsTrait.CollectionPublicPath)
        .borrow<&{MetadataViews.ResolverCollection,GoatedGoatsTrait.TraitCollectionPublic}>()
    if col == nil { return nil }

    let optNft = col!.borrowTrait(id: id)
    if optNft == nil { return nil }
    let nft = optNft!

    let displayView = nft.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: nft.id,
        uuid: nft.uuid,
        title: displayView.name,
        description: displayView.description,
        external_domain_view_url: "https://goatedgoats.com",
        token_uri: nil,
        media: [
            NFTMedia(uri: "https://goatedgoats.mypinata.cloud/ipfs/".concat((displayView.thumbnail as! MetadataViews.IPFSFile).cid), mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft.id.toString(),
            "editionCount": GoatedGoatsTrait.totalSupply.toString(),
            "royaltyAddress": "0xd7081a5c66dc3e7f",
            "royaltyPercentage": "5.0"
        }
    )
 }

// https://flow-view-source.com/mainnet/account/0x2ba17360b76f0143/contract/DropzToken
pub fun getDropzToken(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DropzToken",
        address: 0x2ba17360b76f0143,
        storage_path: "DropzToken.CollectionStoragePath",
        public_path: "DropzToken.CollectionPublicPath",
        public_collection_name: "DropzToken.DropzTokenCollectionPublic",
        external_domain: "https://dropznft.xyz"
    )

    let col = owner.getCapability(DropzToken.CollectionPublicPath)
        .borrow<&{DropzToken.DropzTokenCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDropzToken(id: id)
    if nft == nil { return nil }

    let display = nft!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display
    let thumbnail = display.thumbnail as! MetadataViews.IPFSFile
    let metadata = nft!.resolveView(Type<DropzToken.IPFSTokenMetadata>())! as! DropzToken.IPFSTokenMetadata

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: metadata.uri(),
        media: [NFTMedia(uri: thumbnail.uri(), mimetype: "image")],
        metadata: {
            "ipfs": metadata.uri()
        }
    )
}


// https://flow-view-source.com/mainnet/account/0x718efe5e88fe48ea/contract/Necryptolis
pub fun getNecryptolisNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Necryptolis",
        address: 0x718efe5e88fe48ea,
        storage_path: "Necryptolis.CollectionStoragePath",
        public_path: "Necryptolis.CollectionPublicPath",
        public_collection_name: "Necryptolis.NecryptolisCollectionPublic",
        external_domain: "https://www.necryptolis.com"
    )

    let col = owner.getCapability(Necryptolis.CollectionPublicPath)
        .borrow<&{Necryptolis.NecryptolisCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCemeteryPlot(id: id)
    if nft == nil { return nil }

    let display = nft!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://www.necryptolis.com/nft/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: display.thumbnail.uri(), mimetype: "image")],
        metadata: {
        }
    )
}

//https://flow-view-source.com/mainnet/account/0x2d4c3caffbeab845/contract/FLOAT
pub fun getFLOAT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "FLOAT",
        address: 0x2d4c3caffbeab845,
        storage_path: "FLOAT.FLOATCollectionStoragePath",
        public_path: "FLOAT.FLOATCollectionPublicPath",
        public_collection_name: "FLOAT.CollectionPublic",
        external_domain: "https://floats.city/"
    )

    let col = owner.getCapability(FLOAT.FLOATCollectionPublicPath)
        .borrow<&FLOAT.Collection{FLOAT.CollectionPublic}>()
    if col == nil { return nil }

    let float = col!.borrowFLOAT(id: id)
    if float == nil { return nil }

    let display = float!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: float!.id,
        uuid: float!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://floats.city/".concat((owner.address as Address).toString()).concat("/float/").concat(float!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: float!.eventImage, mimetype: "image")],
        metadata: {
            "eventName" : float!.eventName,
            "eventDescription" : float!.eventDescription,
            "eventHost" : (float!.eventHost as Address).toString(),
            "eventId" : float!.eventId.toString(),
            "eventImage" : float!.eventImage,
            "serial": float!.serial.toString(),
            "dateReceived": float!.dateReceived.toString(),
            "royaltyAddress": "0x5643fd47a29770e7",
            "royaltyPercentage": "5.0"
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/BreakingT_NFT
pub fun getBreakingTNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "BreakingT_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "BreakingT_NFT.CollectionStoragePath",
        public_path: "BreakingT_NFT.CollectionPublicPath",
        public_collection_name: "BreakingT_NFT.BreakingT_NFT",
        external_domain: "https://breakingt.com/",
    )

    let col = owner.getCapability(BreakingT_NFT.CollectionPublicPath)
        .borrow<&{BreakingT_NFT.BreakingT_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowBreakingT_NFT(id: id)
    if nft == nil { return nil }

    let setMeta = BreakingT_NFT.getSetMetadata(setId: nft!.setId)!
    let seriesMeta = BreakingT_NFT.getSeriesMetadata(
        seriesId: BreakingT_NFT.getSetSeriesId(setId: nft!.setId)!
    )
    let seriesId = BreakingT_NFT.getSetSeriesId(setId: nft!.setId)!
    let nftEditions = BreakingT_NFT.getSetMaxEditions(setId: nft!.setId)!
    let externalTokenViewUrl = "https://marketplace.breakingt.com/tokens/".concat(nft!.id.toString())

    var mimeType = "image"
    if setMeta!["image_file_type"]!.toLower() == "mp4" {
        mimeType = "video/mp4"
    } else if setMeta!["image_file_type"]!.toLower() == "glb" {
        mimeType = "model/gltf-binary"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: setMeta!["name"],
        description: setMeta!["description"],
        external_domain_view_url: externalTokenViewUrl,
        token_uri: nil,
        media: [
            NFTMedia(uri: setMeta!["image"], mimetype: mimeType),
            NFTMedia(uri: setMeta!["preview"], mimetype: "image")
        ],
        metadata: {
            "editionNumber": nft!.editionNum.toString(),
            "editionCount": nftEditions!.toString(),
            "set_id": nft!.setId.toString(),
            "series_id": seriesId!.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x41cad19decccdf25/contract/Owners
pub fun getOwnersNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Owners",
        address: 0x41cad19decccdf25,
        storage_path: "/storage/OwnersCollection0x41cad19decccdf25",
        public_path: "Owners.CollectionPublicPath",
        public_collection_name: "Owners.OwnersCollectionPublic",
        external_domain: "https://nft-owners.jp"
    )

    let col = owner.getCapability(Owners.CollectionPublicPath)
        .borrow<&{Owners.OwnersCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowOwners(id: id)

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: "https://nft-owners.jp",
        token_uri: nil,
        media: [NFTMedia(uri: "https://files.nft-owners.jp/profile_images/".concat(nft!.twitterID.toString()).concat(".jpg"), mimetype: "image")],
        metadata: {
            "twitterID": nft!.twitterID.toString()
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x256599e1b091be12/contract/Metaverse
pub fun getOzoneMetaverseNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Metaverse",
        address: 0x256599e1b091be12,
        storage_path: "Metaverse.CollectionStoragePath",
        public_path: "Metaverse.CollectionPublicPath",
        public_collection_name: "Metaverse.MetaverseCollectionPublic",
        external_domain: "https://ozonemetaverse.io"
    )

    let col = owner.getCapability(Metaverse.CollectionPublicPath)
        .borrow<&{Metaverse.MetaverseCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMetaverse(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()
    if metadata == nil { return nil }
    let rawMetadata: {String: String?} = {}
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    if (!metadata.containsKey("editionNumber")) {
        rawMetadata.insert(key: "editionNumber", nft!.id.toString())
    }
    if (!metadata.containsKey("editionCount")) {
        rawMetadata.insert(key: "editionCount", Metaverse.totalSupply.toString())
    }
    if (!metadata.containsKey("royaltyAddress")) {
        rawMetadata.insert(key: "royaltyAddress", "0xbf8ada6bb945651f")
    }
    if (!metadata.containsKey("royaltyPercentage")) {
        rawMetadata.insert(key: "royaltyPercentage", "10.0")
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: metadata["name"],
        description: metadata["description"],
        external_domain_view_url: metadata["url"],
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata["videoUrl"], mimetype: metadata["videoMimeType"]),
            NFTMedia(uri: metadata["imageUrl"], mimetype: metadata["imageMimeType"])
        ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x1e075b24abe6eca6/contract/NFTContract
pub fun getNFTContract(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData (
        name: "NFTContract",
        address: 0x1e075b24abe6eca6,
        storage_path: "NFTContract.CollectionStoragePath",
        public_path: "NFTContract.CollectionPublicPath",
        public_collection_name: "NFTContract.CollectionPublic",
        external_domain: "https://nowwhere.io/"
    )

    let col = owner.getCapability(NFTContract.CollectionPublicPath)
    .borrow<&{NonFungibleToken.CollectionPublic}>()
    if col == nil { return nil }

    let nftData = col!.borrowNFT(id:id)
    var nftMetaData : {String:String} = {}

    let nft = NFTContract.getNFTDataById(nftId: id)!
    if nft == nil { return nil }

    let templateData = NFTContract.getTemplateById(templateId: nft!.templateID)
    let immutableData = templateData.getImmutableData()

    var templateDescription : {String:AnyStruct} = {}
    templateDescription = templateData.getImmutableData() as! {String: AnyStruct}
    var extras : {String:AnyStruct} = {}
    extras = templateDescription["extras"]! as! {String: AnyStruct}
    var description:String?= nil;
    if(extras["Description"] != nil){
        description = extras["Description"]! as? String
    }

    return NFTData (
        contract: contract,
        id: nftData.id,
        uuid: nftData.uuid,
        title: immutableData["title"]! as? String,
        description: description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: immutableData["contectValue"]! as? String, mimetype: "image")],
        metadata: {
            "editionNumber": nft!.mintNumber.toString(),
            "editionCount": templateData.issuedSupply.toString(),
            "artist": templateDescription["artist"]! as? String,
            "mintType": templateDescription["mintType"]! as? String,
            "contectType" :  templateDescription["contectType"]! as? String,
            "artistEmail" :  templateDescription["artistEmail"]! as? String,
            "contectValue" :  templateDescription["contectValue"]! as? String,
            "nftType" :  templateDescription["nftType"]! as? String,
            "rarity" :  templateDescription["rarity"]! as? String,
            "mintType" :  templateDescription["mintType"]! as? String
        }
    )
}

// https://flow-view-source.com/mainnet/account/0xa4e9020ad21eb30b/contract/SwaychainNFT
pub fun getSwaychainNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Swaychain",
        address: 0xa4e9020ad21eb30b,
        storage_path: "SwaychainNFT.CollectionStoragePath",
        public_path: "SwaychainNFT.CollectionPublicPath",
        public_collection_name: "ShawychainNFT.SwaychainNFTCollectionPublic",
        external_domain: "https://swaychain.com/"
    )

    let col = owner.getCapability(SwaychainNFT.CollectionPublicPath)
        .borrow<&{SwaychainNFT.SwaychainNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowSwaychainNFT(id: id)
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
            // "message": nft!.title,
            "description": nft!.description,
            "thumbnail": nft!.thumbnail
        }
    )
}

// https://flow-view-source.com/mainnet/account/0xa4e9020ad21eb30b/contract/QRLNFT
pub fun getQRLNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "QRL",
        address: 0xa4e9020ad21eb30b,
        storage_path: "QRLNFT.CollectionStoragePath",
        public_path: "QRLNFT.CollectionPublicPath",
        public_collection_name: "QRLNFT.QRLNFTCollectionPublic",
        external_domain: "https://swaychain.com/"
    )

    let col = owner.getCapability(QRLNFT.CollectionPublicPath)
        .borrow<&{QRLNFT.QRLNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowQRLNFT(id: id)
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
            // "message": nft!.title,
            "description": nft!.description,
            "thumbnail": nft!.thumbnail
        }
    )
}

// https://flow-view-source.com/mainnet/account/0xa4e9020ad21eb30b/contract/MaxarNFT
pub fun getMaxarNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Maxar",
        address: 0xa4e9020ad21eb30b,
        storage_path: "MaxarNFT.CollectionStoragePath",
        public_path: "MaxarNFT.CollectionPublicPath",
        public_collection_name: "MaxarNFT.MaxarNFTCollectionPublic",
        external_domain: "https://nft.maxar.com/"
    )

    let col = owner.getCapability(MaxarNFT.CollectionPublicPath)
        .borrow<&{MaxarNFT.MaxarNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMaxarNFT(id: id)
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
            // "message": nft!.title,
            "description": nft!.description,
            "thumbnail": nft!.thumbnail
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x7752ea736384322f/contract/TheFabricantS2ItemNFT
pub fun getTheFabricantS2ItemNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TheFabricantS2ItemNFT",
        address: 0x7752ea736384322f,
        storage_path: "TheFabricantS2ItemNFT.CollectionStoragePath",
        public_path: "TheFabricantS2ItemNFT.CollectionPublicPath",
        public_collection_name: "TheFabricantS2ItemNFT.ItemCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(TheFabricantS2ItemNFT.CollectionPublicPath)
        .borrow<&{TheFabricantS2ItemNFT.ItemCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowItem(id: id)!
    if nft == nil { return nil }

    let itemDataID = nft.item.itemDataID
    let itemData = TheFabricantS2ItemNFT.getItemData(id: itemDataID)
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
            "coCreator": itemData.coCreator.toString(),
            "season": itemMetadata["season"]!.metadataValue
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x7c11edb826692404/contract/VnMiss
pub fun getVnMiss(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "VnMiss",
        address: 0x7c11edb826692404,
        storage_path: "VnMiss.CollectionStoragePath",
        public_path: "VnMiss.CollectionPublicPath",
        public_collection_name: "VnMiss.VnMissCollectionPublic",
        external_domain: "https://hoahauhoanvuvietnam.avatarart.io"
    )

    let col = owner.getCapability(VnMiss.CollectionPublicPath)
        .borrow<&{VnMiss.VnMissCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowVnMiss(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display

    let levelAsString = fun (level: UInt8): String {
         switch level {
            case VnMiss.Level.Bronze.rawValue:
                return "Bronze"

            case VnMiss.Level.Silver.rawValue:
                return "Silver"

            case VnMiss.Level.Diamond.rawValue:
                return "Diamond"
        }
        return "Unknown"
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://avatarart.io/nfts/A.7c11edb826692404.VnMiss.NFT.".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: display.thumbnail.uri(), mimetype: "image")],
        metadata: {
            "name": display.name,
            "level": levelAsString(nft!.level),
            "editionNumber": nft!.id.toString(),
            "editionCount": "14200",
            "royaltyAddress": "0xe7da9bede73c8cc2",
            "royaltyPercentage": "5.0"
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x39eeb4ee6f30fc3f/contract/AADigital
pub fun getAvatarArt(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "AADigital",
        address: 0x39eeb4ee6f30fc3f,
        storage_path: "AADigital.CollectionStoragePath",
        public_path: "AADigital.CollectionPublicPath",
        public_collection_name: "AADigital.AADigitalCollectionPublic",
        external_domain: "https://avatarart.io"
    )

    let col = owner.getCapability(AADigital.CollectionPublicPath)
        .borrow<&{AADigital.AADigitalCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowAADigital(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: "https://avatarart.io/nfts/A.39eeb4ee6f30fc3f.AADigital.NFT.".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: "https://api.avatarart.io/upload".concat(display.thumbnail.uri()), mimetype: "image")],
        metadata: {
            "editionNumber": "1",
            "editionCount": AADigital.totalSupply.toString(),
            "royaltyAddress": "0xe7da9bede73c8cc2",
            "royaltyPercentage": "5.0"
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x66ad29c7d7465437/contract/DooverseItems
pub fun getDooverseNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "DooverseItems",
        address: 0x66ad29c7d7465437,
        storage_path: "DooverseItems.CollectionStoragePath",
        public_path: "DooverseItems.CollectionPublicPath",
        public_collection_name: "DooverseItems.DooverseItemsCollectionPublic",
        external_domain: "https://dooverse.io/"
    )

    let col = owner.getCapability(DooverseItems.CollectionPublicPath)
        .borrow<&{DooverseItems.DooverseItemsCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDooverseItem(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()
    let rawMetadata: {String : String?} = {}
    for key in metadata.keys {
        rawMetadata[key] = metadata[key]
    }

    if (!metadata.containsKey("editionNumber")) {
        rawMetadata.insert(key: "editionNumber", nft!.id.toString())
    }
    if (!metadata.containsKey("editionCount")) {
        rawMetadata.insert(key: "editionCount", DooverseItems.totalSupply.toString())
    }
    if (!metadata.containsKey("royaltyAddress")) {
        rawMetadata.insert(key: "royaltyAddress", "0x6b43b691ea37ee22")
    }
    if (!metadata.containsKey("royaltyPercentage")) {
        rawMetadata.insert(key: "royaltyPercentage", "5")
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "Dooverse Items NFT",
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x6f01a4b0046c1f87/contract/TrartContractNFT
pub fun getTrartContractNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "TrartContractNFT",
        address: 0x6f01a4b0046c1f87,
        storage_path: "/storage/TrartContractNFTCollection",
        public_path: "/public/TrartContractNFTCollection",
        public_collection_name: "TrartContractNFT.ICardCollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(TrartContractNFT.CollectionPublicPath)
        .borrow<&{TrartContractNFT.ICardCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCard(id: id)
    if nft == nil { return nil }

    let metadata = TrartContractNFT.getMetadataForCardID(cardID: nft!.id)!.data
    let rawMetadata: {String:String?} = {
        "editionNumber": metadata["SERIES ID"]??"",
        "editionCount": metadata["TOTAL ISSUANCE"]??"",
        "royaltyAddress": "0x416e01b78d5b45ff",
        "royaltyPercentage": "2.5"
    }
    for key in metadata.keys {
        rawMetadata.insert(key: key, metadata[key])
    }

    var nftTitle: String? = metadata["NAME"]
    if nftTitle == nil && metadata["CARD NUMBER"] != nil {
       nftTitle = (metadata["CARD SERIES"]!=nil?metadata["CARD SERIES"]!.concat(" - "):"").concat(metadata["CARD NUMBER"]!)
    }

    let ipfsScheme = "ipfs://"
    let httpsScheme = "https://"

    var ipfsURL: String? = nil
    let metadataUrl: String = metadata["URI"]?? metadata["URL"]?? ""

    if metadataUrl.length > ipfsScheme.length && stringStartsWith(string: metadataUrl, prefix: ipfsScheme) {
        ipfsURL = "https://trartgateway.mypinata.cloud/ipfs/".concat(metadataUrl.slice(from: ipfsScheme.length, upTo: metadataUrl.length));
    } else if metadataUrl.length > httpsScheme.length &&stringStartsWith(string: metadataUrl, prefix: httpsScheme) {
        ipfsURL = metadataUrl
    }

    let mediaArray:[NFTMedia] = ipfsURL!=nil?[NFTMedia(uri: ipfsURL, mimetype: "image")]:[]

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.id,
        title: nftTitle,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: mediaArray,
        metadata: rawMetadata,
    )
}


// https://flow-view-source.com/mainnet/account/0x427ceada271aa0b1/contract/SturdyItems
pub fun getSturdyItemsNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "SturdyItems",
        address: 0x427ceada271aa0b1,
        storage_path: "SturdyItems.CollectionStoragePath",
        public_path: "SturdyItems.CollectionPublicPath",
        public_collection_name: "SturdyItems.SturdyItemsCollectionPublic",
        external_domain: "https://sturdy.exchange/"
    )

    let col = owner.getCapability(SturdyItems.CollectionPublicPath)
        .borrow<&{SturdyItems.SturdyItemsCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowSturdyItem(id: id)
    if nft == nil { return nil }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.tokenTitle,
        description: nft!.tokenDescription,
        external_domain_view_url: "https://sturdy.exchange/secondary-sale/".concat(nft!.id.toString()),
        token_uri: nft!.tokenURI,
        media: [],
        metadata: {
          "typeID": nft!.typeID.toString(),
          "artist": nft!.artist,
          "editionCount": SturdyItems.totalSupply.toString(),
          "secondaryRoyalty": nft!.secondaryRoyalty,
          "platformMintedOn": nft!.platformMintedOn
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x34f2bf4a80bb0f69/contract/PartyMansionDrinksContract
pub fun getPartyMansionDrinksContractNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "PartyMansionDrinksContract",
        address: 0x34f2bf4a80bb0f69,
        storage_path: "PartyMansionDrinksContract.CollectionStoragePath",
        public_path: "PartyMansionDrinksContract.CollectionPublicPath",
        public_collection_name: "PartyMansionDrinksContract.DrinkCollectionPublic",
        external_domain: "https://partymansion.io"
    )

    let col = owner.getCapability(PartyMansionDrinksContract.CollectionPublicPath)
        .borrow<&{PartyMansionDrinksContract.DrinkCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowDrink(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String?} = {}

    rawMetadata.insert(key: "id", nft!.id.toString())
    rawMetadata.insert(key: "name", nft!.data.title)
    rawMetadata.insert(key: "originalOwner", nft!.originalOwner.toString())
    rawMetadata.insert(key: "description", nft!.description())
    rawMetadata.insert(key: "imageCID", nft!.imageCID())
    rawMetadata.insert(key: "drinkID", nft!.data.drinkID.toString())
    rawMetadata.insert(key: "collectionID", nft!.data.collectionID.toString())
    rawMetadata.insert(key: "rarity", nft!.data.rarity.toString())
    rawMetadata.insert(key: "drinkID", nft!.data.drinkID.toString())

    for d in nft!.data.metadata.keys {
        if nft!.data.metadata[d]!.getType() == Type<String>() {
            let s = nft!.data.metadata[d]! as! String
            rawMetadata.insert(key: d, s)
        }
    }


    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "PartyMansionDrinksContract",
        description: nft!.description(),
        external_domain_view_url: nil,
        token_uri: nil,
        media: [
            NFTMedia(uri: "ipfs://".concat(nft!.imageCID()), mimetype: "image")
        ],
        metadata: rawMetadata
    )
}


// https://flow-view-source.com/mainnet/account/0xd3df824bf81910a4/contract/CryptoPiggo
pub fun getCryptoPiggoNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "CryptoPiggo",
        address: 0xd3df824bf81910a4,
        storage_path: "CryptoPiggo.CollectionStoragePath",
        public_path: "CryptoPiggo.CollectionPublicPath",
        public_collection_name: "CryptoPiggo.CryptoPiggoCollectionPublic",
        external_domain: "https://rareworx.com/piggo/details/"
    )

    let col = owner.getCapability(CryptoPiggo.CollectionPublicPath)
        .borrow<&{CryptoPiggo.CryptoPiggoCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowItem(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()
    let rawMetadata: {String : String?} = {}
    for key in metadata.keys {
        rawMetadata[key] = metadata[key]
    }

    if (!metadata.containsKey("name")) {
        rawMetadata.insert(key: "name", "CryptoPiggo #".concat(nft!.id.toString()))
    }
    if (!metadata.containsKey("image")) {
        rawMetadata.insert(key: "image", "https://s3.us-west-2.amazonaws.com/crypto-piggo.nft/piggo-".concat(nft!.id.toString()).concat(".png"))
    }
    if (!metadata.containsKey("url")) {
        rawMetadata.insert(key: "url", "https://rareworx.com/piggo/details/".concat(nft!.id.toString()))
    }
    if (!metadata.containsKey("contentType")) {
        rawMetadata.insert(key: "contentType", "image")
    }

    let external_domain_view_url = "https://s3.us-west-2.amazonaws.com/crypto-piggo.nft/piggo-".concat(nft!.id.toString()).concat(".png")

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "CryptoPiggo",
        description: metadata["description"] ?? nil,
        external_domain_view_url: "https://rareworx.com/piggo/details/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [
            NFTMedia(uri: external_domain_view_url, mimetype: "image")
        ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0xf4264ac8f3256818/contract/Evolution
pub fun getEvolutionNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Evolution",
        address: 0xf4264ac8f3256818,
        storage_path: "/storage/f4264ac8f3256818_Evolution_Collection",
        public_path: "/public/f4264ac8f3256818_Evolution_Collection",
        public_collection_name: "Evolution.EvolutionCollectionPublic",
        external_domain: "https://www.evolution-collect.com/"
    )

    let col = owner.getCapability(/public/f4264ac8f3256818_Evolution_Collection)
        .borrow<&{Evolution.EvolutionCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCollectible(id: id)
    if nft == nil { return nil }

    let metadata = Evolution.getItemMetadata(itemId: nft!.data.itemId)!
    let rawMetadata: {String : String?} = {}
    for key in metadata.keys {
        rawMetadata[key] = metadata[key]
    }

    if (!metadata.containsKey("name")) {
        rawMetadata.insert(key: "name", metadata["Title"]!.concat(" #").concat(nft!.data.serialNumber.toString()))
    }
    if (!metadata.containsKey("image")) {
        rawMetadata.insert(key: "image", "https://storage.viv3.com/0xf4264ac8f3256818/mv/".concat(nft!.data.itemId.toString()))
    }
    if (!metadata.containsKey("contentType")) {
        rawMetadata.insert(key: "contentType", "video")
    }

    let external_domain_view_url = "https://storage.viv3.com/0xf4264ac8f3256818/mv/".concat(nft!.data.itemId.toString())

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "Evolution",
        description: nil,
        external_domain_view_url: nil ,
        token_uri: nil,
        media: [
            NFTMedia(uri: external_domain_view_url, mimetype: "video")
        ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0xd4ad4740ee426334/contract/Moments
pub fun getMomentsNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Jambb Moments",
        address: 0xd4ad4740ee426334,
        storage_path: "Moments.CollectionStoragePath",
        public_path: "Moments.CollectionPublicPath",
        public_collection_name: "Moments.CollectionPublic",
        external_domain: "https://www.jambb.com/"
    )

    let col = owner.getCapability(Moments.CollectionPublicPath)
        .borrow<&{Moments.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMoment(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getMetadata()
    let rawMetadata: {String : String?} = {}
    for key in metadata.contentCredits.keys {
        rawMetadata[key] = metadata.contentCredits[key]
    }

        rawMetadata.insert(key: "id", metadata.id.toString())
        rawMetadata.insert(key: "serialNumber", metadata.serialNumber.toString())
        rawMetadata.insert(key: "contentID", metadata.contentID.toString())
        rawMetadata.insert(key: "contentCreator", metadata.contentCreator.toString())
        rawMetadata.insert(key: "contentName", metadata.contentName)
        rawMetadata.insert(key: "contentDescription", metadata.contentDescription)
        rawMetadata.insert(key: "previewImage", metadata.previewImage)
        rawMetadata.insert(key: "videoURI", metadata.videoURI)
        rawMetadata.insert(key: "videoHash", metadata.videoHash)
        rawMetadata.insert(key: "seriesID", metadata.seriesID.toString())
        rawMetadata.insert(key: "seriesName", metadata.seriesName)
        rawMetadata.insert(key: "seriesArt", metadata.seriesArt)
        rawMetadata.insert(key: "seriesDescription", metadata.seriesDescription)
        rawMetadata.insert(key: "setID", metadata.setID.toString())
        rawMetadata.insert(key: "setName", metadata.setName)
        rawMetadata.insert(key: "setArt", metadata.setArt)
        rawMetadata.insert(key: "setDescription", metadata.setDescription)
        if metadata.retired {
            rawMetadata.insert(key: "retired", "true")
        } else {
            rawMetadata.insert(key: "retired", "false")
        }
        rawMetadata.insert(key: "contentEditionID", metadata.contentEditionID.toString())
        rawMetadata.insert(key: "rarity", metadata.rarity)
        rawMetadata.insert(key: "run", metadata.run.toString())


    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "Jambb Moments",
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [
            NFTMedia(uri: metadata.previewImage, mimetype: "image") ,
            NFTMedia(uri: metadata.videoURI, mimetype: "video")
        ],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0xa49cc0ee46c54bfb/contract/MotoGPCard
pub fun getMotoGPCardNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "MotoGPCard",
        address: 0xa49cc0ee46c54bfb,
        storage_path: "/storage/motogpCardCollection",
        public_path: "/public/motogpCardCollection",
        public_collection_name: "MotoGPCard.ICardCollectionPublic",
        external_domain: "https://motogp-ignition.com/"
    )

    let col = owner.getCapability(/public/motogpCardCollection)
        .borrow<&{MotoGPCard.ICardCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowCard(id: id)
    if nft == nil { return nil }

    let metadata = nft!.getCardMetadata()!
    let rawMetadata: {String : String?} = {}

    for key in metadata.data.keys {
        rawMetadata[key] = metadata.data[key]
    }

    rawMetadata.insert(key: "cardID", metadata.cardID.toString())

    rawMetadata.insert(key: "name", metadata.name)

    rawMetadata.insert(key: "description", metadata.description)

    rawMetadata.insert(key: "imageUrl", metadata.imageUrl)

     let address=owner.address!
    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "MotoGPCard",
        description: metadata.description,
        external_domain_view_url: "https://motogp-ignition.com/nft/card/".concat(id.toString()).concat("?owner=").concat(address.toString()),
        token_uri: nil,
        media: [NFTMedia(uri:metadata.imageUrl, mimetype: "image")],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x329feb3ab062d289/contract/UFC_NFT
pub fun getUFCNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "UFC_NFT",
        address: 0x329feb3ab062d289,
        storage_path: "UFC_NFT.CollectionStoragePath",
        public_path: "UFC_NFT.CollectionPublicPath",
        public_collection_name: "UFC_NFT.UFC_NFTCollectionPublic",
        external_domain: "https://www.ufcstrike.com"
    )

    let col = owner.getCapability(UFC_NFT.CollectionPublicPath)
        .borrow<&{UFC_NFT.UFC_NFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowUFC_NFT(id: id)
    if nft == nil { return nil }

    var metadata = UFC_NFT.getSetMetadata(setId: nft!.setId)!
    let rawMetadata: {String : String?} = {}
    for key in metadata.keys {
        rawMetadata[key] = metadata[key]
    }

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: "UFC Strike",
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: metadata["preview"]!, mimetype: "image" )],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x921ea449dffec68a/contract/Flovatar
pub fun getFlovatarNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Flovatar",
        address: 0x921ea449dffec68a,
        storage_path: "Flovatar.CollectionStoragePath",
        public_path: "Flovatar.CollectionPublicPath",
        public_collection_name: "Flovatar.CollectionPublic",
        external_domain: "https://www.flovatar.com"
    )

    let col = owner.getCapability(Flovatar.CollectionPublicPath)
        .borrow<&{Flovatar.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFlovatar(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String?} = {}
    let metadata = nft!.getMetadata()
    rawMetadata["series"] = metadata.series.toString()
    rawMetadata["combination"] = metadata.combination
    rawMetadata["creatorAddress"] = metadata.creatorAddress.toString()
    rawMetadata["rareCount"] = metadata.rareCount.toString()
    rawMetadata["epicCount"] = metadata.epicCount.toString()
    rawMetadata["legendaryCount"] = metadata.legendaryCount.toString()
    rawMetadata["accessoryId"] = nft!.getAccessory() != nil  ? nft!.getAccessory()!.toString() : ""
    rawMetadata["hatId"] = nft!.getHat() != nil  ? nft!.getHat()!.toString() : ""
    rawMetadata["eyeglassesId"] = nft!.getEyeglasses() != nil ? nft!.getEyeglasses()!.toString() : ""
    rawMetadata["backgroundId"] = nft!.getBackground() != nil  ? nft!.getBackground()!.toString() : ""

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.id,
        title: "Flovatar",
        description: nil,
        external_domain_view_url: "https://flovatar.com/flovatars/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: "https://flovatar.com/api/image/".concat(nft!.id.toString()), mimetype: "video" )],
        metadata: rawMetadata
    )
}



// https://flow-view-source.com/mainnet/account/0x921ea449dffec68a/contract/FlovatarComponent
pub fun getFlovatarComponentNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let col = owner.getCapability(FlovatarComponent.CollectionPublicPath)
        .borrow<&{FlovatarComponent.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowComponent(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String?} = {}
    let componentTemplate = FlovatarComponentTemplate.getComponentTemplate(id: nft!.templateId)!
    rawMetadata["templateId"] = componentTemplate.id.toString()
    rawMetadata["name"] = componentTemplate.name
    rawMetadata["description"] = componentTemplate.description
    rawMetadata["category"] = componentTemplate.category
    rawMetadata["rarity"] = componentTemplate.rarity


    let contract = NFTContractData(
        name: "Flovatar Flobit - ".concat(componentTemplate.name),
        address: 0x921ea449dffec68a,
        storage_path: "FlovatarComponent.CollectionStoragePath",
        public_path: "FlovatarComponent.CollectionPublicPath",
        public_collection_name: "FlovatarComponent.CollectionPublic",
        external_domain: "https://www.flovatar.com"
    )

    return NFTData(
        contract: contract,
        id: nft!.mint,
        uuid: nft!.id,
        title: "Flovatar Flobit",
        description: nil,
        external_domain_view_url: "https://flovatar.com/components/".concat(nft!.id.toString()),
        token_uri: nil,
        media: [NFTMedia(uri: "https://flovatar.com/api/image/template/".concat(nft!.templateId.toString()), mimetype: "image" )],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x3b16cb9f5c036412/contract/ByteNextMedalNFT
pub fun getByteNextMedalNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "ByteNextMedalNFT",
        address: 0x3b16cb9f5c036412,
        storage_path: "ByteNextMedalNFT.CollectionStoragePath",
        public_path: "ByteNextMedalNFT.CollectionPublicPath",
        public_collection_name: "ByteNextMedalNFT.CollectionPublic",
        external_domain: "https://app.bytenext.io"
    )

    let col = owner.getCapability(ByteNextMedalNFT.CollectionPublicPath)
        .borrow<&{ByteNextMedalNFT.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowMedalNFT(id: id)
    if nft == nil { return nil }

    let rawMetadata: {String : String} = {}
    let metadata = nft!.getMetadata()
    rawMetadata["name"] = metadata["name"] ?? ""
    rawMetadata["level"] = metadata["level"] ?? ""
    rawMetadata["metaURI"] = metadata["metaURI"] ?? ""

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: rawMetadata["name"],
        description: rawMetadata["name"],
        external_domain_view_url: metadata["metaURI"],
        token_uri: nil,
        media: [NFTMedia(uri: metadata["metaURI"], mimetype: "image")],
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x6c3ff40b90b928ab/contract/RCRDSHPNFT
pub fun getRCRDSHPNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "RCRDSHPNFT",
        address: 0x6c3ff40b90b928ab,
        storage_path: "RCRDSHPNFT.collectionStoragePath",
        public_path: "RCRDSHPNFT.collectionPublicPath",
        public_collection_name: "RCRDSHPNFT.RCRDSHPNFTCollectionPublic",
        external_domain: "https://app.rcrdshp.com/"
    )

    let col = owner.getCapability(RCRDSHPNFT.collectionPublicPath)
        .borrow<&{RCRDSHPNFT.RCRDSHPNFTCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowRCRDSHPNFT(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display
    let httpFile = display.thumbnail as! MetadataViews.HTTPFile

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: httpFile.uri(), mimetype: "image")],
        metadata: {}
    )
}

// https://flow-view-source.com/mainnet/account/0x321d8fcde05f6e8c/contract/Seussibles
pub fun getSeussibles(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Seussibles",
        address: 0x321d8fcde05f6e8c,
        storage_path: "Seussibles.CollectionStoragePath",
        public_path: "Seussibles.PublicCollectionPath",
        public_collection_name: "",
        external_domain: "https://seussibles.com/"
    )

    let col = owner.getCapability<&AnyResource{MetadataViews.ResolverCollection}>(Seussibles.PublicCollectionPath)
        .borrow<>()
    if col == nil { return nil }

    let nftResolver = col!.borrowViewResolver(id: id)
    if nftResolver == nil { return nil }

    let displayView = nftResolver!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display
    let httpFile = display.thumbnail as! MetadataViews.HTTPFile

    return NFTData(
        contract: contract,
        id: id,
        uuid: nil,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: httpFile.uri(), mimetype: "image")],
        metadata: {}
    )
}

// https://flow-view-source.com/mainnet/account/0xf2af175e411dfff8/contract/MetaPanda
pub fun getMetaPanda(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "MetaPanda",
        address: 0xf2af175e411dfff8,
        storage_path: "MetaPanda.CollectionStoragePath",
        public_path: "MetaPanda.CollectionPublicPath",
        public_collection_name: "",
        external_domain: "https://metapandaclub.com/"
    )

    let col = owner.getCapability<&AnyResource{MetadataViews.ResolverCollection}>(MetaPanda.CollectionPublicPath)
        .borrow<>()
    if col == nil { return nil }

    let nftResolver = col!.borrowViewResolver(id: id)
    if nftResolver == nil { return nil }

    let displayView = nftResolver!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display
    let httpFile = display.thumbnail as! MetadataViews.HTTPFile

    return NFTData(
        contract: contract,
        id: id,
        uuid: nil,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: httpFile.uri(), mimetype: "image")],
        metadata: {}
    )
}

// https://flow-view-source.com/mainnet/account/0x807c3d470888cc48/contract/Flunks
pub fun getFlunks(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "Flunks",
        address: 0x807c3d470888cc48,
        storage_path: "Flunks.CollectionStoragePath",
        public_path: "Flunks.CollectionPublicPath",
        public_collection_name: "Flunks.FlunksCollectionPublic",
        external_domain: "https://flunks.io/"
    )

    let col = owner.getCapability(Flunks.CollectionPublicPath)
        .borrow<&{Flunks.FlunksCollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowFlunks(id: id)
    if nft == nil { return nil }

    let displayView = nft!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display
    let httpFile = display.thumbnail as! MetadataViews.HTTPFile

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: httpFile.uri(), mimetype: "image")],
        metadata: {}
    )
}

// https://flow-view-source.com/mainnet/account/0x52cbea4e6f616b8e/contract/LibraryPass
pub fun getLibraryPass(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContract(
        name: "LibraryPass",
        address: 0x52cbea4e6f616b8e,
        storage_path: "LibraryPass.CollectionPath",
        public_path: "LibraryPass.CollectionPublicPath",
        public_collection_name: "LibraryPass.CollectionPublic",
        external_domain: "https://publishednft.io/"
    )

    let col = owner.getCapability(LibraryPass.CollectionPublicPath)
        .borrow<&{LibraryPass.CollectionPublic}>()

    if col == nil { return nil }

    let nft = col!.borrowLibraryPassNFT(id: id)
    if nft == nil { return nil }

    let display = nft!.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display
	
	return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
		title: display.name,
        description: display.description,
        external_domain_view_url: "https://publishednft.io/".concat(nft!.id.toString()),
        media: [NFTMedia(uri: display.thumbnail.uri(), mimetype: "image")],
        alternate_media: [],
        metadata: {            
        }
    )
}

https://flow-view-source.com/testnet/account/0x9af2f3f3b56ce0e7/contract/SkyharborNFT
pub fun getSkyHarborNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContractData(
        name: "SkyharborNFT",
        address: 0x33f44e504a396ba7,
        storage_path: "SkyharborNFT.CollectionStoragePath",
        public_path: "SkyharborNFT.CollectionPublicPath",
        public_collection_name: "",
        external_domain: "https://www.skyharbor.app/"
    )

    let col = owner.getCapability<&AnyResource{MetadataViews.ResolverCollection}>(SkyharborNFT.CollectionPublicPath)
        .borrow<>()
    if col == nil { return nil }

    let nftResolver = col!.borrowViewResolver(id: id)
    if nftResolver == nil { return nil }

    let displayView = nftResolver!.resolveView(Type<MetadataViews.Display>())!
    let display = displayView as! MetadataViews.Display
    let ipfsFile = display.thumbnail as! MetadataViews.IPFSFile

    return NFTData(
        contract: contract,
        id: id,
        uuid: nil,
        title: display.name,
        description: display.description,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [NFTMedia(uri: ipfsFile.uri(), mimetype: "image"),
		        NFTMedia(uri: ipfsFile.uri(), mimetype: "video")
			   ],
        metadata: {}
    )
}