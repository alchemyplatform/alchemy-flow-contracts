import { deployContractByName, getAccountAddress } from "flow-js-testing";

export async function createAccounts() {
    let adminAccount = await getAccountAddress("admin");
    let accountA = await getAccountAddress("a");
    let accountB = await getAccountAddress("b");
    let addressMap = {
        NonFungibleToken: adminAccount,
        FungibleToken: adminAccount,
        MetadataViews: adminAccount,
        AlchemyMetadataWrapperEmulator: adminAccount,
        TestNFT: adminAccount,
        TestNFTWithViews: adminAccount,
    };
    return { adminAccount, accountA, accountB, addressMap };
}

export async function deployContracts(accountA, addressMap) {
    let [deploymentResult, error] = await deployContractByName({
        name: "NonFungibleToken",
        to: accountA,
        addressMap,
    });
    expect(error).toBe(null);

    [deploymentResult, error] = await deployContractByName({
        name: "FungibleToken",
        to: accountA,
        addressMap,
    });
    expect(error).toBe(null);

    [deploymentResult, error] = await deployContractByName({
        name: "MetadataViews",
        to: accountA,
        addressMap,
    });
    expect(error).toBe(null);

    [deploymentResult, error] = await deployContractByName({
        name: "TestNFT",
        to: accountA,
        addressMap,
    });
    expect(error).toBe(null);

    [deploymentResult, error] = await deployContractByName({
        name: "TestNFTWithViews",
        to: accountA,
        addressMap,
    });
    expect(error).toBe(null);

    // This one needs to be deployed after the NFTs above.
    [deploymentResult, error] = await deployContractByName({
        name: "AlchemyMetadataWrapperEmulator",
        to: accountA,
        addressMap,
    });
    expect(error).toBe(null);
}
