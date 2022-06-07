> :warning: **For Dapper/Alchemy use**: This information may not be useful or applicable for NFT Developers

## Local setup

To set up this repo on your machine:

1. Clone the repo
2. Install flow-cli to run Cadence scripts directly `brew install flow-cli`
3. `npm install`

## Tests

There are useful `unit` and `regression` tests that can be run via -

-   `npm test`: Runs all tests
-   `npm run testUnit`: Runs only unit tests
-   `npm run testRegression`: Runs only regression tests.

> NOTE: The regression tests specifically take a while to run as it invokes scripts against testnet/mainnet for all supported NFT collections.

## Release Flow

The standard process for release is as follows -

1. Ensure the latest code has been pulled, and you have the necessary Flow Account keys setup locally.
1. Ensure all tests are passing
1. Run the release tool - `npm run release`
1. Via the CLI, select `Generate contract` and the applicable env. For new changes, you should generate for `testnet` first.
1. By running the above command, it will generate the contract at `./generated/cadence/contracts/`
1. Via the CLI, select `Diff deployed contract` and the applicable stack. Validate the changes are as expected
1. Via the CLI, select `Deploy contract` and the applicable stack. Validate the command is as expected and execute to deploy the new changes.
