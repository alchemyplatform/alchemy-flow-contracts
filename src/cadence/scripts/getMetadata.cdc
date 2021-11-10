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

    if let collection = owner.getCapability(/* capabiltiy path */)
    .borrow<&{/* capability type */}>() {
        ids = col.getIDs()
    }

    if offset >= ids.length {
        panic("offset can't be bigger than size of the nft collection")
    } 

    var x = 0
    while offset + x < ids.length && x < limit {
        // borrow NFT by ID and create instance of NFTData with provided NFT data
        let nft = NFTData(
            contract: nil, 
            id: nil,
            uuid: nil,
            title: nil,
            description: nil,
            external_domain_view_url: nil,
            media: nil,
            alternate_media: [],
            metadata: {},
        )
        
        nfts.append(nft)
        x = x + 1
    }

    return nfts
}