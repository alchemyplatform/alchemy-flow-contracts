# Alchemy's Flow Contracts

> :warning: **Please use [https://flow-nft-catalog.com](https://flow-nft-catalog.com) instead of onboarding to th repo.**

There have been improvements to the Flow Developer Ecosystem to improve and streamline the process to make your NFT’s metadata discoverable and interoperable. Making the following changes will become the defacto way to become listed and gain support from marketplaces and platforms throughout Flow.

As an NFT collection developer, we ask for the following actions to make your NFT collection and meteadata discoverable and interoperable:

1. Update your NFT contract to support MetadataView with implementation of the [core NFT Views](https://github.com/onflow/flow-nft/pull/103/files#diff-a7af41cf43e29d0e6028827c3d5f305326677661bf65d79539d59ed1056c0a84R38). The core nft views are `display`, `externalURL`, `collectionData`, `collectionDisplay`, `royalties`, and `traits`.
2. Deploy the updated contract in both testnet and mainnet
3. Afterwards, onboard your NFT to the Flow NFT catalog at [https://flow-nft-catalog.com](https://flow-nft-catalog.com)

### How-to Resources

-   [This video](https://www.youtube.com/watch?v=rgJRTozG3cw) from Emerald DAO’s Jacob Tucker can help you get started on implemented Metadata Views
-   Use the [Example NFT Contract](https://github.com/onflow/flow-nft/blob/master/contracts/ExampleNFT.cdc) as an example of how you can implement metadata views for your NFT
-   Use the [Flow CLI](https://docs.onflow.org/flow-cli/deploy-project-contracts/) to deploy your contract
-   Onboard your NFT collection to the catalog, following the steps found [here](https://github.com/dapperlabs/nft-catalog#submitting-a-collection-to-the-nft-catalog).
