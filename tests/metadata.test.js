import path from "path";
import { init, emulator } from "flow-js-testing";
import { createAccounts, deployContracts } from "./lib/common";
import fs from "fs";
import * as utils from "./lib/utils";

const cadenceTestingSuite = describe("Metadata Tests", () => {
    let adminAccount,
        accountA,
        accountB,
        addressMap = null;

    const getNFTIDs = fs.readFileSync(
        path.resolve(
            __dirname,
            "../src/cadence/scripts/v2/emulator/getNFTIDs.cdc"
        ),
        "utf-8"
    );
    const getNFTs = fs.readFileSync(
        path.resolve(
            __dirname,
            "../src/cadence/scripts/v2/emulator/getNFTs.cdc"
        ),
        "utf-8"
    );

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
            ({ adminAccount, accountA, accountB, addressMap } =
                await createAccounts());
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
            expect(Object.keys(res).length).toBe(0);

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
            "title": "TestNFT title",
            "description": "TestNFT description",
            "uri": "TestNFT uri",
            "img": "TestNFT img",
            "other": "other"
        })
        getAccount(recipient).getCapability<&{NonFungibleToken.Receiver}>(TestNFT.CollectionPublicPath).borrow()!.deposit(token: <-TestNFT.mint(nftID: 1))

        TestNFTWithViews.setEditionMetadata(editionNumber: 1, metadata: {
            "title": "TestNFTWithViews title",
            "description": "TestNFTWithViews description",
            "thumbnailCID": "1234"
        })
        getAccount(recipient).getCapability<&{NonFungibleToken.Receiver}>(TestNFTWithViews.CollectionPublicPath).borrow()!.deposit(token: <-TestNFTWithViews.mint(nftID: 1))
    }
}
                `,
                [accountA],
                [adminAccount]
            );
        });

        test("Should get NFT IDs for an account with NFTs", async () => {
            let res = await utils.runScript(getNFTIDs, [accountA]);
            expect(Object.keys(res).length).toBe(2);
            expect(Object.keys(res).includes("TestNFT")).toBe(true);
            expect(Object.keys(res).includes("TestNFTWithViews")).toBe(true);
            expect(res["TestNFT"].length).toBe(1);
            expect(res["TestNFTWithViews"].length).toBe(1);
            expect(res["TestNFT"].includes(1)).toBe(true);
            expect(res["TestNFTWithViews"].includes(1)).toBe(true);
        });

        test("Should get no NFT IDs for an account without NFTs", async () => {
            let res = await utils.runScript(getNFTIDs, [accountB]);
            expect(Object.keys(res).length).toBe(0);
        });

        test("Should get metadata for a struct-based NFT in an account", async () => {
            let metadata = (
                await utils.runScript(getNFTs, [
                    accountA,
                    {
                        TestNFT: [1],
                    },
                ])
            )[0];
            expect(metadata.contract.name).toBe("TestNFT");
            expect(metadata.contract.address).toBe("0xf8d6e0586b0a20c7");
            expect(metadata.contract.storage_path).toBe(
                "TestNFT.CollectionStoragePath"
            );
            expect(metadata.contract.public_path).toBe(
                "TestNFT.CollectionPublicPath"
            );
            expect(metadata.contract.public_collection_name).toBe(
                "TestNFT.TestNFTCollectionPublic"
            );
            expect(metadata.contract.external_domain).toBe("test.xyz");
            expect(metadata.id).toBe(1);
            expect(metadata.title).toBe("TestNFT title");
            expect(metadata.description).toBe("TestNFT description");
            expect(metadata.external_domain_view_url).toBe("TestNFT uri");
            expect(metadata.media[0].uri).toBe("TestNFT img");
            expect(metadata.media[0].mimetype).toBe("image");
            expect(metadata.metadata.other).toBe("other");
        });

        test("Should get no metadata for a struct-based NFT not in an account", async () => {
            let metadata = (
                await utils.runScript(getNFTs, [
                    accountB,
                    {
                        TestNFT: [1],
                    },
                ])
            )[0];
            expect(metadata).toBe(null);
        });

        test("Should get metadata for a view-based NFT in an account", async () => {
            let metadata = (
                await utils.runScript(getNFTs, [
                    accountA,
                    {
                        TestNFTWithViews: [1],
                    },
                ])
            )[0];
            expect(metadata.contract.name).toBe("TestNFTWithViews");
            expect(metadata.contract.address).toBe("0xf8d6e0586b0a20c7");
            expect(metadata.contract.storage_path).toBe(
                "TestNFTWithViews.CollectionStoragePath"
            );
            expect(metadata.contract.public_path).toBe(
                "TestNFTWithViews.CollectionPublicPath"
            );
            expect(metadata.contract.public_collection_name).toBe(
                "TestNFTWithViews.TestNFTWithViewsCollectionPublic"
            );
            expect(metadata.contract.external_domain).toBe("test.xyz");
            expect(metadata.id).toBe(1);
            expect(metadata.title).toBe("TestNFTWithViews 1");
            expect(metadata.description).toBe("TestNFTWithViews description");
            expect(metadata.external_domain_view_url).toBe("");
            expect(metadata.media[0].uri).toBe(
                "https://test.mypinata.cloud/ipfs/1234"
            );
            expect(metadata.media[0].mimetype).toBe("image");
        });

        test("Should get metadata for a view-based NFT not in an account", async () => {
            let metadata = (
                await utils.runScript(getNFTs, [
                    accountB,
                    {
                        TestNFTWithViews: [1],
                    },
                ])
            )[0];
            expect(metadata).toBe(null);
        });
    });
});

export default cadenceTestingSuite;
