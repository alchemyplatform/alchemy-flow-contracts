## Implementing Metadata Scripts

Metadata script consists of structs defining the schema required by our services and function used to
fetch the NFT for a provided user and convert the metadata implementation of the contract to the schema defined.

The main function needs to have a signature: `main(owner: Address, offset: UInt16, limit: UInt16)`
`owner` provided address for which we want to retrieve NFT metadata
`offset` used for pagination, some users might have huge amount of NFTs and we might need to paginate them
`limit` how many of NFTs are fetched within one request

First you need to borrow collection resource which is defined in the NFT by the [Collection interface](https://github.com/onflow/flow-nft/blob/master/contracts/NonFungibleToken.cdc#L104). After you retrieve the collection you should return all of the NFT IDs and save them to a variable.
Example:

```
let col = owner.getCapability(/public/FooCollection)
    .borrow<&{Foo.PublicCollection}>()
if col == nil { return nil }

ids = col.getIDs()
```

After we retrieve all of the IDs we proceed by itterating through the IDs and fetching NFT for each of the IDs. Usually collection has a method used
to retrieve a specific NFT by its ID. We call that method and store the returned NFT to a variable.
Example:

```
let nft = col!.borrowFooNFT(id: index)
```

Then we need to use this returned NFT to assemble a metadata response. Each NFT implementation has different metadata fields so you need to
provide as many fields in the `NFTData` initialization as possible.

_Please note each NFT metadata implementation is different so you have to provide as many values as is relevant to your NFT._
Example:

```
let meta = nft.getMetadata()

return NFTData(
    contract: contract,
    id: nft!.id,
    uuid: nft!.uuid,
    title: meta!["title"],
    description: meta["description"],
    external_domain_view_url: "",
    media: NFTMedia(uri: meta!["video_url"], mimetype: "video"),
    alternate_media: [],
    metadata: meta,
)
```

### Alchemy Metadata Schema

We will take a look at each data an describe its purpose.

**Collection**

```
pub struct Collection {
    pub let owner: Address // address of the owner of NFT
    pub let nfts: [NFT] // collection of NFT data
}
```

**NFT metadata**

```
pub struct NFT {
    pub let contract: Contract // contract defined bellow
    pub let id: UInt64 // id of the nft usually just nft.id
    pub let uuid: UInt64? // uuid of the nft usually just nft.uuid
    pub let title: String? // title of the nft
    pub let description: String? // description of the nft
    pub let external_domain_view_url: String? // api for nft view resource
    pub let media: Media? // media defined bellow used as avatar of nft
    pub let alternate_media: [Media?] // alternative media to the primary media above
    pub let metadata: {String: AnyStruct} // all the metadata in raw
}
```

**Contract data**

```
pub struct Contract {
    pub let name: String // name of the contract
    pub let address: Address // address of the contract
    pub let external_domain: String // domain of the project
}
```

**Media data**

```
pub struct Media {
    pub let uri: String? // uri location of the media resource
    pub let mimetype: String? // mime type of the nft
}
```
