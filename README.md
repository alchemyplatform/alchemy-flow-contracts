# alchemy-flow-contracts
To set up this repo on your machine:
1. Clone the repo
2. Install flow-cli to run Cadence scripts directly `brew install flow-cli`
3. This repo supports contracts on Flow mainnet only

# Running the code
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
flow scripts execute getNFTs.cdc --args-json '[{ "type": "Address", "value": "0x9eef2e4511390ce4" }, { "type": "Dictionary", "value": [{ "key": { "type": "String", "value": "Gaia" }, "value": { "type": "Array", "value": [{ "type": "UInt64", "value": "1129" }] } }] }]' --network mainnet
```

# Adding a new contract
1. Update https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/cadence/scripts/getNFTIDs.cdc to return the list of NFT IDs for the new contract
2. Add a new function in https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/cadence/scripts/getNFTs.cdc to retrieve NFT metadata given an NFT ID.

# List of contracts
| Contract | Testnet | Mainnet |
| :---: | :---: | :---: |
| Gaia (Ballers) |	0xc523a8bbf10fc4a3 | 0x8b148183c28ff88f |

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

