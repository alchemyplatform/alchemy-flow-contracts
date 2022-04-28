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
import MintStoreItem from 0x20187093790b9aef
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
import Andbox_NFT from 0x329feb3ab062d289
import ZeedzINO from 0x62b3063fbe672fc8
import Kicks from 0xf3cc54f4d91c2f6c
import BarterYardPackNFT from 0xa95b021cf8a30d80
import MetadataViews from 0x1d7e57aa55817448
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
    pub let metadata: {String: String?}

    init(
        contract: NFTContract,
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
                case "Andbox_NFT": d = getAndbox_NFT(owner: owner, id: id)
                case "FantastecNFT": d = getFantastecNFT(owner: owner, id: id)
                case "Everbloom": d = getEverbloom(owner: owner, id: id)
                case "Domains": d = getFlownsDomain(owner: owner, id:id)
                case "EternalMoment": d = getEternalMoment(owner: owner, id: id)
                case "ThingFund": d = getCaaPass(owner: owner, id: id)
                case "TFCItems": d = getTFCItems(owner: owner, id: id)
                case "Gooberz": d = getGooberz(owner: owner, id: id)
                case "MintStoreItem": d = getMintStoreItem(owner: owner, id: id)
                case "BiscuitsNGroovy": d = getBiscuitsNGroovy(owner: owner, id: id)
                case "GeniaceNFT": d = getGeniaceNFT(owner: owner, id: id)
                case "Xtingles": d = getXtinglesNFT(owner: owner, id: id)
                case "Beam": d = getBeam(owner: owner, id: id)
                case "KOTD": d = getKOTD(owner: owner, id: id)
                case "KlktnNFT": d = getKlktnNFT(owner: owner, id: id)
                case "KlktnNFT2": d = getKlktnNFT2(owner: owner, id: id)
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
                case "Kicks" : d = getKicksSneaker(owner: owner, id: id)
                case "BarterYardPack": d = getBarterYardPack(owner: owner, id: id)
                case "DayNFT" : d = getDayNFT(owner: owner, id: id)
                case "Costacos_NFT": d = getCostacosNFT(owner: owner, id: id)
                case "Canes_Vault_NFT": d = getCanesVaultNFT(owner: owner, id: id)
                case "AmericanAirlines_NFT": d = getAmericanAirlinesNFT(owner: owner, id: id)
                case "The_Next_Cartel_NFT": d = getTheNextCartelNFT(owner: owner, id: id)
                case "Atheletes_Unlimited_NFT": d = getAthletesUnlimitedNFT(owner: owner, id: id)
                case "Art_NFT": d = getArtNFT(owner: owner, id: id)
                case "DGD_NFT": d = getDGDNFT(owner: owner, id: id)
                case "NowggNFT": d = getNowggNFT(owner: owner, id: id)
                case "GogoroCollectible": d = getGogoroCollectibleNFT(owner: owner, id: id)
                case "YahooCollectible": d = getYahooCollectibleNFT(owner: owner, id: id)
                case "SomePlaceCollectible": d = getSomePlaceCollectibleNFT(owner: owner, id: id)
                case "ARTIFACTPack": d = getARTIFACTPack(owner: owner, id: id)                
                case "ARTIFACT": d = getARTIFACT(owner: owner, id: id)
                case "NftReality": d = getNftRealityNFT(owner: owner, id: id)
                case "MatrixWorldAssetsNFT": d = getNftMatrixWorldAssetsNFT(owner: owner, id: id)
                case "RacingTime": d = getRacingTimeNFT(owner: owner, id: id)
                case "Momentables": d = getMomentables(owner: owner, id: id)    
                case "GoatedGoats": d = getGoatedGoats(owner: owner, id: id)
                case "GoatedGoatsTrait": d = getGoatedGoatsTrait(owner: owner, id: id)
                case "DropzToken": d = getDropzToken(owner: owner, id: id)
                case "Necryptolis": d = getNecryptolisNFT(owner: owner, id: id)
                case "FLOAT" : d = getFLOAT(owner: owner, id: id)
                case "BreakingT_NFT": d = getBreakingTNFT(owner: owner, id: id)
                case "Owners": d = getOwnersNFT(owner: owner, id: id)
                case "Metaverse": d = getOzoneMetaverseNFT(owner: owner, id: id)
                case "Swaychain": d = getSwaychainNFT(owner: owner, id: id)
				case "MyNFT": d = getSkyhorborNFT(owner: owner, id: id)
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
        let contract = NFTContract(
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

        let contract = NFTContract(
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
            "typeID": nft!.typeID.toString()
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

            let contract = NFTContract(
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

            let contract = NFTContract(
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
            "creator": data.creator.toString(),
            "cpower": data.cpower.toString(),
            "cid": data.cid,
            "generation": data.generation.toString()
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
        
    
    let contract = NFTContract(
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
            "rarity": getRarity()
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
            "edition": nft!.metadata!.edition.toString()
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
            "creator": miamiData.creator.toString(),
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
            "coCreator": itemData.coCreator.toString(),
            "season": itemMetadata["season"]!.metadataValue
        }
    )
}

// https://flow-view-source.com/mainnet/account/0x62b3063fbe672fc8/contract/ZeedzINO
pub fun getZeedzINO(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
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
    let contract = NFTContract(
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

    var metadata = nft!.getMetadata()
    var rawMetadata : {String: String?} = {}
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

    for key in metadata.keys {
        if metadata[key]!.getType().isSubtype(of: Type<Number>()) {
            metadata[key] = (metadata[key]! as! Number).toString()
            rawMetadata.insert(key: key, (metadata[key]! as! Number).toString())
        } else if metadata[key]!.getType() != Type<String>() {
            metadata.remove(key: key)
        }
        else if metadata[key]!.getType().isSubtype(of: Type<String>()) {
            rawMetadata.insert(key: key, (metadata![key]! as! String))
        }
    }
    if (!metadata.containsKey("editionNumber")) { 
        metadata["editionNumber"] = nft!.instanceID.toString() 
        rawMetadata.insert(key: "editionNumber", nft!.instanceID.toString())
    }
    if (!metadata.containsKey("editionCount")) { 
        metadata["editionCount"] = nft!.getBlueprint().numberMinted.toString() 
        rawMetadata.insert(key: "editionCount", nft!.getBlueprint().numberMinted.toString())
    }
    if (!metadata.containsKey("royaltyAddress")) { 
        metadata["royaltyAddress"] = "0xf3cc54f4d91c2f6c" 
        rawMetadata.insert(key: "royaltyAddress", "0xf3cc54f4d91c2f6c")
    }
    if (!metadata.containsKey("royaltyPercentage")) { 
        metadata["royaltyPercentage"] = "5" 
        rawMetadata.insert(key: "royaltyPercentage", "5")
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
        metadata: rawMetadata,
    )
}

pub fun getBarterYardPack(owner: PublicAccount, id: UInt64): NFTData? {
  let contract = NFTContract(
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

// https://flow-view-source.com/mainnet/account/0x1600b04bf033fb99/contract/DayNFT
pub fun getDayNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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

// https://flow-view-source.com/mainnet/account/0x85b8bbf926dcddfa/contract/NowggNFT
pub fun getNowggNFT(owner: PublicAccount, id: UInt64): NFTData? {

    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
            "editionNumber": nft!.unit.toString(),
            "editionCount": nft!.totalUnits.toString(),
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

// https://flow-view-source.com/mainnet/account/0xf20df769e658c257/contract/MatrixWorldAssetsNFT
pub fun getNftMatrixWorldAssetsNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
        metadata: rawMetadata
    )
}

// https://flow-view-source.com/mainnet/account/0x2068315349bdfce5/contract/GoatedGoats
pub fun getGoatedGoats(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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
    let contract = NFTContract(
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

// https://flow-view-source.com/mainnet/account/0xd756450f386fb4ac/contract/Metaverse
pub fun getOzoneMetaverseNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Metaverse",
        address: 0xd756450f386fb4ac,
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

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nil,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
        metadata: {}
    )
}

// https://flow-view-source.com/mainnet/account/0x5dfbd0d5aba6acf7/contract/SwaychainNFT
pub fun getSwaychainNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Swaychain",
        address: 0x5dfbd0d5aba6acf7,
        storage_path: "SwaychainNFT.CollectionStoragePath",
        public_path: "SwaychainNFT.CollectionPublicPath",
        public_collection_name: "ShawychainNFT.SwaychainNFTCollectionPublic",
        external_domain: "https://swaychain.com/"
    )

    let col = owner.getCapability(SwaychainNFT.CollectionPublicPath)
        .borrow<&{SwaychainNFT.SwaychainNFTCollectionPublic}>()
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

// https://flow-view-source.com/mainnet/account/0x33f44e504a396ba7/contract/MyNFT
pub fun getSkyhorborNFT(owner: PublicAccount, id: UInt64): NFTData? {
    let contract = NFTContract(
        name: "Skyharbor.app",
        address: 0x33f44e504a396ba7,
        storage_path: "/storage/MyNFTCollection",
        public_path: "/public/MyNFTCollection",
        public_collection_name: "MyNFT.CollectionPublic",
        external_domain: ""
    )

    let col = owner.getCapability(/public/MyNFTCollection)
        .borrow<&{MyNFT.CollectionPublic}>()
    if col == nil { return nil }

    let nft = col!.borrowReward(id: id)
    if nft == nil { return nil }
	
	let setID = nft.setID

    return NFTData(
        contract: contract,
        id: nft!.id,
        uuid: nft!.uuid,
        title: nft!.name,
        description: nil,
        external_domain_view_url: nil,
        token_uri: nil,
        media: [],
		metadata: {
		"editionNumber": nft.editionNumber,
		"editionCount": "0",
		"royaltyAddress": "",
		"royaltyPercentage": "0"
        }
    )
}