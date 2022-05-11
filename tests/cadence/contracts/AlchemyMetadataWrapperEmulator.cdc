// AUTO-GENERATED CONTRACT
import MetadataViews from "./MetadataViews.cdc"
import NonFungibleToken from "./NonFungibleToken.cdc"
import TestNFT from "./TestNFT.cdc"
import TestNFTWithViews from "./TestNFTWithViews.cdc"

/*
    A wrapper contract around the script provided by the Alchemy GitHub respository.
    Allows for on-chain storage of NFT Metadata, allowing consumers to query upon.
    This contract will be periodically updated based on new onboarding PRs and deployed.
    Any consumers calling the public methods below will retrieve the latest and greatest data.
*/
pub contract AlchemyMetadataWrapperEmulator {
    // Structs copied over as-is from getNFT(ID)?s.cdc for backwards-compatability.
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
    
    // Same method signature as getNFTs.cdc for backwards-compatability.
    pub fun getNFTs(ownerAddress: Address, ids: {String:[UInt64]}): [NFTData?] {
        let NFTs: [NFTData?] = []
        let owner = getAccount(ownerAddress)
    
        for key in ids.keys {
            for id in ids[key]! {
                var d: NFTData? = nil
    
                switch key {
                    case "TestNFT": d = self.getTestNFT(owner: owner, id: id)
                    case "TestNFTWithViews": d = self.getTestNFTWithViews(owner: owner, id: id)
                    default:
                        panic("adapter for NFT not found: ".concat(key))
                }
                NFTs.append(d)
            }
        }
    
        return NFTs
    }
    
    pub fun getTestNFT(owner: PublicAccount, id: UInt64): NFTData? {
        let contract = NFTContractData(
            name: "TestNFT",
            address: 0xf8d6e0586b0a20c7,
            storage_path: "TestNFT.CollectionStoragePath",
            public_path: "TestNFT.CollectionPublicPath",
            public_collection_name: "TestNFT.TestNFTCollectionPublic",
            external_domain: "test.xyz"
        )
    
        let col = owner.getCapability(TestNFT.CollectionPublicPath)
            .borrow<&{TestNFT.TestNFTCollectionPublic}>()
        if col == nil { return nil }
    
        let nft = col!.borrowTestNFT(id: id)
        if nft == nil { return nil }
    
        let metadata = nft!.getMetadata()
    
        let rawMetadata: {String:String?} = {}
        for key in metadata.keys {
            rawMetadata.insert(key: key, metadata[key])
        }
    
        return NFTData(
            contract: contract,
            id: nft!.id,
            uuid: nft!.uuid,
            title: metadata["title"],
            description: metadata["description"],
            external_domain_view_url: metadata["uri"],
            token_uri: nil,
            media: [NFTMedia(uri: metadata["img"], mimetype: "image")],
            metadata: rawMetadata,
        )
    }
    
    pub fun getTestNFTWithViews(owner: PublicAccount, id: UInt64): NFTData? {
        let contract = NFTContractData(
            name: "TestNFTWithViews",
            address: 0xf8d6e0586b0a20c7,
            storage_path: "TestNFTWithViews.CollectionStoragePath",
            public_path: "TestNFTWithViews.CollectionPublicPath",
            public_collection_name: "TestNFTWithViews.TestNFTWithViewsCollectionPublic",
            external_domain: "test.xyz"
        )
    
        let col = owner.getCapability(TestNFTWithViews.CollectionPublicPath)
            .borrow<&{MetadataViews.ResolverCollection,TestNFTWithViews.TestNFTWithViewsCollectionPublic}>()
    
        if col == nil { return nil }
    
        let nft = col!.borrowTestNFTWithViews(id: id)!
        if nft == nil { return nil }
    
        let displayView = nft.resolveView(Type<MetadataViews.Display>())! as! MetadataViews.Display
    
        return NFTData(
            contract: contract,
            id: nft.id,
            uuid: nft.uuid,
            title: displayView.name,
            description: displayView.description,
            external_domain_view_url: "",
            token_uri: nil,
            media: [
                NFTMedia(uri: "https://test.mypinata.cloud/ipfs/".concat((displayView.thumbnail as! MetadataViews.IPFSFile).cid), mimetype: "image")
            ],
            metadata: {
                "editionCount": "10000"
            }
        )
    }

    // Same method signature as getNFTIDs.cdc for backwards-compatability.
    pub fun getNFTIDs(ownerAddress: Address): {String: [UInt64]} {
        let owner = getAccount(ownerAddress)
        let ids: {String: [UInt64]} = {}
    
        if let col = owner.getCapability(TestNFT.CollectionPublicPath)
            .borrow<&{TestNFT.TestNFTCollectionPublic}>() {
                ids["TestNFT"] = col.getIDs()
            }
        if let col = owner.getCapability(TestNFTWithViews.CollectionPublicPath)
            .borrow<&{TestNFTWithViews.TestNFTWithViewsCollectionPublic}>() {
                ids["TestNFTWithViews"] = col.getIDs()
            }
    
        return ids
    }
}