# Alchemy's Flow Contracts

This repository includes all NFT collections discoverable through the Alchemy API.

## Local setup

To set up this repo on your machine:

1. Clone the repo
2. Install flow-cli to run Cadence scripts directly `brew install flow-cli`
3. This repo supports contracts on Flow mainnet only

## Running the code

**GetNFTIDs.cdc**

This script returns all the NFT IDs belonging to a particular account

```
flow scripts execute getNFTIDs.cdc 0x9eef2e4511390ce4 --network mainnet
```

Output:

```
Result: {"Gaia": [1117, 2817, 4029, 6649, 7990, 8033, 1114, 1115, 1125, 1136, 1137, 1122, 1124, 1132, 1134, 1145, 1147, 1150, 1121, 1130, 1151, 1119, 1128, 1135, 1113, 1127, 1133, 1116, 1143, 1149, 1126, 1131, 1139, 1142, 1144, 1146, 1112, 1118, 1123, 1129, 1141, 1153, 1120, 1111, 1107, 1108, 1109, 1110]}
```

**GetNFTs.cdc**

This script returns the NFT metadata for the given contract and NFT ID. The input is a dictionary of contract names as keys and array of NFT IDs for the value.

```
flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9eef2e4511390ce4" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Gaia" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1129" }] } }] }]' --network mainnet
```

Output:

```
Result: [s.1a80e96259b9dd336bf3c2527c515f2713e46b64b482de17986fd3c4af90b633.NFTData(contract: s.1a80e96259b9dd336bf3c2527c515f2713e46b64b482de17986fd3c4af90b633.NFTContractData(name: "Gaia", address: 0x8b148183c28ff88f, storage_path: "Gaia.CollectionStoragePath", public_path: "Gaia.CollectionPublicPath", public_collection_name: "Gaia.CollectionPublic", external_domain: "ballerz.xyz"), id: 1129, uuid: 74658161, title: "BALLER #1024", description: "A basketball-inspired generative NFT living on the Flow blockchain", external_domain_view_url: "/collection/ballerz//1024", media: s.1a80e96259b9dd336bf3c2527c515f2713e46b64b482de17986fd3c4af90b633.NFTMedia(uri: "ipfs://QmaUhmEgy5Znagz2ayY2uyn5Xdbsvzm8PkBM1GghtsXihv/1024.png", mimetype: "image"), alternate_media: [], metadata: {"id": "1024", "body": "Human I", "team": "Los Angeles Knives", "accessories": "Pencil", "jersey": "Home", "hair": "Pink Pigtails", "role": "Player", "number": "67", "dunks": "85", "shooting": "85", "playmaking": "82", "defense": "87", "img": "ipfs://QmaUhmEgy5Znagz2ayY2uyn5Xdbsvzm8PkBM1GghtsXihv/1024.png", "title": "BALLER #1024", "description": "A basketball-inspired generative NFT living on the Flow blockchain", "uri": "/collection/ballerz//1024"})]
```

## Adding a new contract

In order to get a new NFT collection listed in the Alchemy API, you need to submit a pull request to this repository.

### Submitting a pull request

The steps below explain how to create a pull request.

1. Update https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/cadence/mainnet/getNFTIDs.cdc to return the list of NFT IDs for the new contract

   a. Add contract import statement

   ```
   import Gaia from 0x8b148183c28ff88f
   ```

   b. Borrow the collection resource which is defined in the NFT by the [Collection interface](https://github.com/onflow/flow-nft/blob/master/contracts/NonFungibleToken.cdc#L104) and return all nft ids:

   ```
   if let col = owner.getCapability(Gaia.CollectionPublicPath)
       .borrow<&{Gaia.CollectionPublic}>() {
           ids["Gaia"] = col.getIDs()
       }
   ```

2. Add a new function in https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/cadence/mainnet/getNFTs.cdc to retrieve NFT metadata given an NFT ID.

   a. Add contract import statement

   ```
   import Gaia from 0x8b148183c28ff88f
   ```

   b. Add a new function to deserialize NFT metadata into the generic Alchemy metadata schema defined below.

   ```
   case "Gaia": d = getGaia(owner: owner, id: id)
   ```

   ```
   // https://flow-view-source.com/mainnet/account/0x8b148183c28ff88f/contract/Gaia
   pub fun getGaia(owner: PublicAccount, id: UInt64): NFTData? {

       let contract = NFTContractData(
           name: "Gaia",
           address: 0x8b148183c28ff88f,
           storage_path: "Gaia.CollectionPath",
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
   ```

   > Note: Make sure you follow the [NFT metadata structure](#nft-metadata). If you want support for Blocto, you [need to add additional fields](#blocto-support).

   c. Add a test case for your newly added contract here: https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/cadence/mainnet/getNFTs.cdc

   d. Do the same for testnet: https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/cadence/testnet

   ```
   sh testGetNFTs.sh Gaia
   ```

3. Submit new pull request. Before you do that, review one of the [successfully merged PRs](https://github.com/alchemyplatform/alchemy-flow-contracts/pull/67/files#diff52ac07a32e5823cea9908ece26d09760b30077a72260acc0cd237d9ab1cfac3aR2719-R272).

## Awaiting reviews updates to the API

Alchemy engineers will review your pull request and either merge it or ask you for more details and/or changes.

Once your pull request was merged, Alchemy will have to update their API in production. The roll-out may take a couple of days.

## Verifying API changes

Use the Alchemy APIs below to ensure your NFT collection is included in the responses.

### Endpoint: getNFTMetadata

The [`getNFTMetadata`](https://docs.alchemy.com/alchemy/enhanced-apis/nft-api/getnftmetadata) endpoint returns metadata associated with a specific NFT.

```shell
curl https://flow-mainnet.g.alchemy.com/v2/demo/getNFTMetadata/?owner={ACCOUNT_ADDRESS_OF_NFT_OWNER}e&contractName={NAME_OF _DEPLOYED_CONTRACT}&contractAddress={ADDRESS_CONTRACT_IS_DEPLOYED_TO}aef&tokenId={ID_OF_NFT_IN_OWNERS_ACCOUNT}
```

> **Note**: Make sure you replace all four variables before making your API call: `ACCOUNT_ADDRESS_OF_NFT_OWNER`, `NAME_OF _DEPLOYED_CONTRACT`, `ADDRESS_CONTRACT_IS_DEPLOYED_TO`, and `ID_OF_NFT_IN_OWNERS_ACCOUNT`.

### Endpoint: getNFTs

The [`getNFTs`](https://docs.alchemy.com/alchemy/enhanced-apis/nft-api/getnfts) endpoint returns a list of NFTs owned by a specific address.

```shell
curl https://flow-mainnet.g.alchemy.com/v2/demo/getNFTs/?owner={NFT_ACCOUNT_OWNERS_ADDRESS}&offset=0&limit=10
```

> **Note**: Make sure you replace `NFT_ACCOUNT_OWNERS_ADDRESS` with the account address.

## Optional: Requesting Blocto to list your NFT collection

Once your NFT collection is supported in the Alchemy API, you may request an NFT listing on Blocto:

**[Fill out this form to request a Blocto NFT listing](https://docs.google.com/forms/d/e/1FAIpQLScrr67RLhfJ8bARJHTpp2SztOpQZwmdm7gsDmsqjTlTUUJt7Q/viewform)**.

> **Note**: Ensure that you included the [Blocto-specific metadata fields](#blocto-support)

## Appendix: Understanding schema definitions

Below are the available Alchemy schema definitions.

### Collection

```cadence
pub struct Collection {
    pub let owner: Address // address of the owner of NFT
    pub let nfts: [NFT] // collection of NFT data
}
```

### NFT metadata

```cadence
pub struct NFT {
    pub let contract: Contract // contract defined bellow
    pub let id: UInt64 // id of the nft usually just nft.id
    pub let uuid: UInt64? // uuid of the nft usually just nft.uuid
    pub let title: String? // title of the nft
    pub let description: String? // description of the nft
    pub let external_domain_view_url: String? // api for nft view resource
    pub let media: Media? // media defined bellow used as avatar of nft
    pub let alternate_media: [Media?] // alternative media to the primary media above
    pub let metadata: {String: String?} // all the metadata in raw
}
```

#### Blocto support

Blocto leverages the Alchemy API to discover and display NFT collections in their wallet. They require 4 specific properties to exist in the metadata object: `editionNumber`, `editionCount`, `royaltyAddress`, and `royaltyPercentage`.

Here is an example:

```cadence
return NFTData(
    contract: contract,
    id: nft.id,
    uuid: nft.uuid,
    title: editionMetadata.getMetadata()["title"] ?? setMetadata.getMetadata()["title"] ?? "",
    description: editionMetadata.getMetadata()["description"] ?? setMetadata.getMetadata()["description"] ?? "", external_domain_view_url: "https://some.place",
    token_uri: nil,
    media: [
        NFTMedia(uri: editionMetadata.getMetadata()["mediaURL"] ?? setMetadata.getMetadata()["mediaURL"] ?? "", mimet ],
    metadata: {
        "editionNumber": nft.editionNumber, //THIS CAN BE AN INTEGER OR A STRING
        "editionCount": setMetadata.getMaxNumberOfEditions(),//THIS CAN BE AN INTEGER OR A STRING
        "royaltyAddress": "0x8e2e0ebf3c03aa88",//THIS CAN BE AN INTEGER OR A STRING
        "royaltyPercentage": "10.0"//THIS CAN BE AN INTEGER OR A STRING
    }
)
```

### Contract

```cadence
pub struct Contract {
    pub let name: String // name of the contract
    pub let address: Address // address of the contract
    pub let external_domain: String // domain of the project
}
```

### Media data

```cadence
pub struct Media {
    pub let uri: String? // uri location of the media resource
    pub let mimetype: String? // mime type of the nft
}
```
