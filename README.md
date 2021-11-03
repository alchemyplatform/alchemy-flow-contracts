# alchemy-flow-contracts
To set up this repo on your machine:
1. Clone the repo
2. Run `npm install`
3. Run `npm run nft-metadata` or `npm run nft-id` to run the metadata and NFT ID retrieval Cadence scripts
4. You might also have to run `nvm use 14` if you see the `Object.fromEntries` error
5. Install flow-cli to run Cadence scripts directly `brew install flow-cli`

# Retreiving NFT IDs for a particular address:
This script takes in a user address and returns the list of NFT IDs (id + uuid) owned by the address
Input: userAddress
Output: { ContractName : [ NFT_ID ] }
NFT_ID = { id : ID, uuid: UUID }

1. Edit the userAddress string in nftIdsByAccount.ts
2. Add code to retrieve IDs for the new contract - it should be very similar to the example Gaia code
3. This script is currently set up for Testnet and uses the Alchemy Flow Testnet API key
4. You can find Mainnet/Testnet contract addresses at https://github.com/StarlyIO/flowfest-contracts
 
# Adding new contracts to nft-metadata
This script takes in a user address (parameter) and NFT list (hard coded inside the script) and returns the metadata for each NFT ID
Input: userAddress + { ContractName : [ id ] }
1. To add a new contract, edit the userAddress string to nftMetadata.ts
2. Add code to retrieve the contract metadata and fill out the "results" struct keyed by NFT id
3. The contract metadata should mimic the standardized NFT response format defined here: https://www.notion.so/dapperlabs/Generic-NFT-Response-0fc17e037bc34a2590c1d8f159bfe8d7 so that we can reuse a simple deserialization function in Java for every field except (metadata)
4. The Java class for the standardized NFT response is checked in here: https://github.com/alchemyplatform/alchemy-flow-contracts/blob/main/src/NftHttpResponseV2.java
5. Fields available for every Flow contracts can be found here: https://github.com/StarlyIO/flowfest-contracts/tree/master/contracts
6. The contract metadata schema can also be added to the java file
