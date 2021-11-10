// Collection wraps alchemy metadata by owner from which it was retrieved.
//  
pub struct NFTCollection {
    pub let owner: Address
    pub let nfts: [NFTData]

    init(owner: Address) {
        self.owner = owner
        self.nfts = []
    }
}

// NFT defines alchemy metadata
//
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

// Contract defines the name, address and the domain of the project.
//
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

// Media defines the location and type of data.
//
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

// Retrieve NFTs metadata for the specified owner address. 
// Offset and limit define the range for returned array and support pagination.
// 
pub fun main(owner: Address, offset: UInt16, limit: UInt16): [NFTData] {
    let NFTs: [NFTData] = []
    let owner = getAccount(ownerAddress)
    var ids: [UInt64] = []
    var nfts: [NFTData] = []

    let col = owner.getCapability(/public/EternalShardCollection)
        .borrow<&{Shard.ShardCollectionPublic}>()
    if col == nil { return nil }
    
    ids = col.getIDs()

    if offset >= ids.length {
        panic("offset can't be bigger than size of the nft collection")
    } 

    var x = 0
    var index = offset + x

    while index < ids.length && x < limit {
        let nft = col!.borrowShardNFT(id: index)
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
        
        nfts.append(nft)
        x = x + 1
        index = offset + x
    }

    return nfts
}