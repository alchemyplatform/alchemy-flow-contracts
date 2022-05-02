import path from "path";
import { init, emulator } from "flow-js-testing";
import { createAccounts, deployContracts } from "./lib/common";
import * as utils from "./lib/utils";

const cadenceTestingSuite = describe("Metadata Tests", () => {
    let adminAccount,
        accountA,
        addressMap = null;

    beforeAll(async () => {
        const basePath = path.resolve(__dirname, "../src/cadence");
        const port = 8080;
        await init(basePath, { port });
        await emulator.start(port);
    });

    afterAll(async () => {
        await emulator.stop();
    });

    describe("Metadata testing", () => {
        test("Should create accounts", async () => {
            ({ adminAccount, accountA, addressMap } = await createAccounts());
        });

        test("Should deploy contracts", async () => {
            await deployContracts(adminAccount, addressMap);
        });

        test("Should setup test NFT collections", async () => {
            let res = await utils.runScript(
                `
import AlchemyMetadataWrapperEmulator from "../contracts/AlchemyMetadataWrapperEmulator.cdc"

pub fun main(account: Address): {String: [UInt64]} {
    return AlchemyMetadataWrapperEmulator.getNFTIDs(ownerAddress: account)
}
                `,
                [accountA]
            );
            expect(Object.keys(res[0]).length).toBe(0);

            // Setup collections for account A
            res = await utils.runTransaction(
                `
import NonFungibleToken from "../contracts/NonFungibleToken.cdc"
import MetadataViews from "../contracts/MetadataViews.cdc"
import TestNFT from "../contracts/TestNFT.cdc"
import TestNFTWithViews from "../contracts/TestNFTWithViews.cdc"

transaction() {

    prepare(acct: AuthAccount) {
        if acct.borrow<&TestNFT.Collection>(from: TestNFT.CollectionStoragePath) == nil {
            let collection <- TestNFT.createEmptyCollection()
            acct.save(<-collection, to: TestNFT.CollectionStoragePath)
        }
        if acct.getCapability<&TestNFT.Collection{NonFungibleToken.CollectionPublic, NonFungibleToken.Receiver, TestNFT.TestNFTCollectionPublic}>(TestNFT.CollectionPublicPath).borrow() == nil {
            acct.link<&TestNFT.Collection{NonFungibleToken.CollectionPublic, NonFungibleToken.Receiver, TestNFT.TestNFTCollectionPublic}>(TestNFT.CollectionPublicPath, target: TestNFT.CollectionStoragePath)
        }

        if acct.borrow<&TestNFTWithViews.Collection>(from: TestNFTWithViews.CollectionStoragePath) == nil {
            let collection <- TestNFTWithViews.createEmptyCollection()
            acct.save(<-collection, to: TestNFTWithViews.CollectionStoragePath)
        }
        if acct.getCapability<&TestNFTWithViews.Collection{NonFungibleToken.CollectionPublic, NonFungibleToken.Receiver, TestNFTWithViews.TestNFTWithViewsCollectionPublic, MetadataViews.ResolverCollection}>(TestNFTWithViews.CollectionPublicPath).borrow() == nil {
            acct.link<&TestNFTWithViews.Collection{NonFungibleToken.CollectionPublic, NonFungibleToken.Receiver, TestNFTWithViews.TestNFTWithViewsCollectionPublic, MetadataViews.ResolverCollection}>(TestNFTWithViews.CollectionPublicPath, target: TestNFTWithViews.CollectionStoragePath)
        }
    }
    execute {
    }
}
                `,
                [],
                [accountA]
            );

            // Mint test nfts to account A
            res = await utils.runTransaction(
                `
import NonFungibleToken from "../contracts/NonFungibleToken.cdc"
import TestNFT from "../contracts/TestNFT.cdc"
import TestNFTWithViews from "../contracts/TestNFTWithViews.cdc"

transaction(recipient: Address) {
    prepare(acct: AuthAccount) {
    }

    execute {
        TestNFT.setEditionMetadata(editionNumber: 1, metadata: {
            "test": "test"
        })
        getAccount(recipient).getCapability<&{NonFungibleToken.Receiver}>(TestNFT.CollectionPublicPath).borrow()!.deposit(token: <-TestNFT.mint(nftID: 1))

        TestNFTWithViews.setEditionMetadata(editionNumber: 1, metadata: {
            "test": "test"
        })
        getAccount(recipient).getCapability<&{NonFungibleToken.Receiver}>(TestNFTWithViews.CollectionPublicPath).borrow()!.deposit(token: <-TestNFTWithViews.mint(nftID: 1))
    }
}
                `,
                [accountA],
                [adminAccount]
            );
        });
    });
});

export default cadenceTestingSuite;
