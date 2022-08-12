import path from "path";
import fs from "fs";
import prompts from "prompts";
import fcl from "@onflow/fcl";
import colors from "colors";
import * as Diff from "diff";
import { spawn } from "child_process";
import splitArray from "split-array";
const __dirname = path.resolve();

const SHARD_SIZE = 25;
// These "pass" the import test but stil fail, manually remove them for now.
const DENY_LIST = {
    emulator: [],
    testnet: [
        "SturdyItems",
        "Metaverse",
        "AADigital",
        "Gear",
        "Flovatar",
        "FlovatarComponent",
        "FlovatarComponentTemplate",
    ],
    mainnet: [
        "SturdyItems",
        "CryptoPiggo",
        "TheFabricantS1ItemNFT",
        "ItemNFT",
        "Everbloom",
        "Owners",
        "Necryptolis",
        "ByteNextMedalNFT",
        "Flovatar",
        "FlovatarComponent",
        "FlovatarComponentTemplate",
        "SportsIconCollectible",
        "HaikuNFT",
    ],
};

// String helper function
Object.defineProperty(String.prototype, "capitalize", {
    value: function () {
        return this.charAt(0).toUpperCase() + this.slice(1);
    },
    enumerable: false,
});

const getLocalContracts = (env) => {
    return fs
        .readdirSync("./generated/cadence/contracts/")
        .filter((file) => file.toLowerCase().includes(env));
};

const isContractValid = async (env, importStatement) => {
    if (env === "emulator") {
        return true;
    }
    fcl.config.put(
        "accessNode.api",
        env === "mainnet"
            ? "https://access-mainnet-beta.onflow.org"
            : "https://access-testnet.onflow.org"
    );
    try {
        // Check if the contract is valid with Secure Cadence.
        await fcl.send([
            fcl.script(
                `
${importStatement} 
pub fun main(): Bool { 
    return true 
}`
            ),
            fcl.args(),
        ]);
        return true;
    } catch (err) {
        return false;
    }
};

const generateContract = async (env) => {
    const getNFTIDs = fs.readFileSync(
        path.resolve(
            __dirname,
            `./${
                env === "emulator" ? "tests" : "src"
            }/cadence//${env}/getNFTIDs.cdc`
        ),
        "utf-8"
    );
    const getNFTs = fs.readFileSync(
        path.resolve(
            __dirname,
            `./${
                env === "emulator" ? "tests" : "src"
            }/cadence/${env}/getNFTs.cdc`
        ),
        "utf-8"
    );
    const cadenceContractTemplate = fs.readFileSync(
        path.resolve(
            __dirname,
            `./src/cadence/contracts/AlchemyMetadataWrapper.template`
        ),
        "utf-8"
    );
    // Import statements from the scripts
    const nftContractImports = {};
    const allContractNames = new Set();
    const mainImports = new Set();
    const validContracts = new Set();
    for (let match of getNFTIDs.matchAll(/\s*(import (.*)\s*from\s*.*)/g)) {
        let [full, key, value] = match;
        const importStatement = key.trim();
        if (
            importStatement.includes("NonFungibleToken") ||
            importStatement.includes("MetadataViews")
        ) {
            mainImports.add(importStatement);
        } else {
            allContractNames.add(value.trim());
            nftContractImports[value.trim()] = importStatement;
        }
    }
    for (let match of getNFTs.matchAll(/\s*(import (.*)\s*from\s*.*)/g)) {
        let [full, key, value] = match;
        const importStatement = key.trim();
        if (
            importStatement.includes("NonFungibleToken") ||
            importStatement.includes("MetadataViews")
        ) {
            mainImports.add(importStatement);
        } else {
            allContractNames.add(value.trim());
            nftContractImports[value.trim()] = importStatement;
        }
    }
    for (let name of [...allContractNames]) {
        if (
            (await isContractValid(env, nftContractImports[name])) &&
            !DENY_LIST[env].includes(name)
        ) {
            validContracts.add(name);
        }
    }

    // Shard based on number of imports (due to https://github.com/onflow/flow-go/issues/2275)
    let shard = 1;
    for (let shardedContractNames of splitArray(
        Object.keys(nftContractImports),
        SHARD_SIZE
    )) {
        let validShardedContractNames = shardedContractNames
            // Only include valid contracts.
            .filter((name) => validContracts.has(name));
        // First add all imports
        let generatedCadenceContract = cadenceContractTemplate.replace(
            /\${Begin NFT addresses}(.|\n)*\${End NFT addresses}/,
            [
                ...validShardedContractNames.map(
                    (name) => nftContractImports[name]
                ),
                ...mainImports,
            ]
                .sort()
                .join("\n")
        );

        const name = `${env.capitalize()}Shard${shard++}`;
        // Update Contract name
        generatedCadenceContract = generatedCadenceContract.replace(
            "${Env}",
            name
        );

        // Add structs
        const structs = [];
        for (let match of getNFTs.matchAll(
            /(pub\s*struct\s*[A-z0-9]+?\s*\{(?:[^}{]+|\{(?:[^}{]+|\{[^}{]*\})*\})*\})/g
        )) {
            let [full, key] = match;
            structs.push(
                key
                    .trim()
                    .split("\n")
                    // Make indendations
                    .map((str) => {
                        return "    " + str;
                    })
                    .join("\n")
            );
        }
        generatedCadenceContract = generatedCadenceContract.replace(
            /\${Begin Structs}(.|\n)*\${End Structs}/,
            [...structs].join("\n\n")
        );

        // Only pull ones we care about.
        const getNFTsMethods = {};
        for (let match of getNFTs.matchAll(
            /(pub fun (.*)\((.|\n)*?}?)(?=(pub fun|^\/\/|$))/g
        )) {
            let [full, method, name] = match;
            if (name === "main") {
                // Don't reference this as we include it in the next block of code.
                continue;
            }
            // Add methods that include the sharded contract names
            if (
                validShardedContractNames.some((n) =>
                    method.match(
                        new RegExp(`(?<!\\/\\/.*|".*)\\b${n}\\b\\.`, "m")
                    )
                ) ||
                // Utility method.
                name === "stringStartsWith"
            ) {
                getNFTsMethods[name] = method.replace(
                    new RegExp(`(?<!pub fun\\s+)(stringStartsWith)\\b`, "g"),
                    "self.$&"
                );
            }
        }

        // Add main getNFTs method
        generatedCadenceContract = generatedCadenceContract.replace(
            /\${Begin getNFTs}(.|\n)*\${End getNFTs}/,
            getNFTs
                // Change the method name
                .match(/(pub fun main(.|\n)*?^}$)/m)[0]
                .replace("main", "getNFTs")
                // Update references to include .self
                .replace(
                    new RegExp(
                        `(?<!pub fun\\s+)(${Object.keys(getNFTsMethods).join(
                            "|"
                        )})\\b`,
                        "g"
                    ),
                    "self.$&"
                )
                .split("\n")
                // Make indendations and change unused methods.
                .map((str) => {
                    if (
                        str.includes("case") &&
                        !Object.keys(getNFTsMethods).some((method) =>
                            str.includes(method)
                        )
                    ) {
                        return "    " + str.split(":")[0] + ": continue";
                    } else {
                        return "    " + str;
                    }
                })
                .join("\n")
                .concat("\n\n")
                .concat(
                    Object.values(getNFTsMethods)
                        .join("\n\n")
                        .split("\n")
                        // Make indendations
                        .map((str) => {
                            return "    " + str;
                        })
                        .join("\n")
                )
        );

        // Add main getNFTIDs method
        generatedCadenceContract = generatedCadenceContract.replace(
            /\${Begin getNFTIDs}(.|\n)*\${End getNFTIDs}/,
            getNFTIDs
                .match(/(pub fun main(.|\n)*?^}$)/m)[0]
                .replace("main", "getNFTIDs")
                // Remove unused methods
                .replace(
                    new RegExp(
                        `(if let((?!${[...validShardedContractNames]
                            .map((name) => `\\b${name}\\b`)
                            .join("|")}).|\\n)*?)(?=(if let|return))`,
                        "gm"
                    ),
                    ""
                )
                .split("\n")
                // Make indendations
                .map((str) => {
                    return "    " + str;
                })
                .join("\n")
        );
        // Save the generated contract
        fs.writeFileSync(
            path.resolve(
                __dirname,
                `./${
                    env === "emulator" ? "tests" : "generated"
                }/cadence/contracts/AlchemyMetadataWrapper${name}.cdc`
            ),
            generatedCadenceContract
        );
    }
};

const diffDeployedContract = async (stack) => {
    const flowJson = JSON.parse(fs.readFileSync("./flow.json", "utf-8"));
    const env = stack.split("-")[0];
    let flowAccountAddress;
    try {
        flowAccountAddress = flowJson.accounts[`${stack}-account`].address;
    } catch (err) {
        console.error(
            "Flow account has not been created or added to the flow.json yet."
        );
        return;
    }
    fcl.config.put(
        "accessNode.api",
        stack.startsWith("mainnet")
            ? "https://access-mainnet-beta.onflow.org"
            : "https://access-testnet.onflow.org"
    );
    const account = await fcl
        .send([fcl.getAccount(flowAccountAddress)])
        .then(fcl.decode);
    const { contract } = await prompts({
        type: "select",
        name: "contract",
        message: "Which contract do you want to diff against?",
        choices: getLocalContracts(env).map((contract) => {
            return {
                title: contract,
                value: contract,
            };
        }),
    });
    const deployedContract = account.contracts[contract.split(".")[0]] || "";
    let generatedContract;
    try {
        generatedContract = fs.readFileSync(
            path.resolve(
                __dirname,
                `./generated/cadence/contracts/${contract}`
            ),
            "utf-8"
        );
    } catch (err) {
        console.error(
            'Cannot load the local generated contract, please run the "Generate contract" command first.'
        );
        return;
    }
    const diff = Diff.diffLines(deployedContract, generatedContract);
    let isDiff = false;
    for (let i = 0; i < diff.length; i++) {
        const color = diff[i].added
            ? "green"
            : diff[i].removed
            ? "red"
            : "grey";
        if (diff[i].added || diff[i].removed) {
            isDiff = true;
            process.stdout.write(diff[i].value[color]);
        }
    }
    if (!isDiff) {
        console.log("No differences between deployed and generated contract.");
    }
};

const deployContract = async (stack) => {
    const env = stack.split("-")[0];
    const { contract } = await prompts({
        type: "select",
        name: "contract",
        message: "Which contract do you want to deploy against?",
        choices: getLocalContracts(env).map((contract) => {
            return {
                title: contract,
                value: contract,
            };
        }),
    });
    let signer = `${stack}-account`;
    const flowJson = JSON.parse(fs.readFileSync("./flow.json", "utf-8"));
    let flowAccountAddress;
    try {
        flowAccountAddress = flowJson.accounts[signer].address;
    } catch (err) {
        console.error(
            "Flow account has not been created or added to the flow.json yet."
        );
        return;
    }
    fcl.config.put(
        "accessNode.api",
        stack.startsWith("mainnet")
            ? "https://access-mainnet-beta.onflow.org"
            : "https://access-testnet.onflow.org"
    );
    if (
        !fs.existsSync(
            path.resolve(
                __dirname,
                `./generated/cadence/contracts/${contract}`
            ),
            "utf-8"
        )
    ) {
        console.error(
            'Cannot load the local generated contract, please run the "Generate contract" command first.'
        );
        return;
    }

    const account = await fcl
        .send([fcl.getAccount(flowAccountAddress)])
        .then(fcl.decode);
    let flowCommand = "update-contract";
    if (account.contracts[contract.split(".")[0]] === undefined) {
        flowCommand = "add-contract";
    }
    const command = `flow accounts ${flowCommand} ${
        contract.split(".")[0]
    } ./generated/cadence/contracts/${contract} --signer ${signer} --network ${
        stack.split("-")[0]
    }`;
    const { confirm } = await prompts({
        type: "select",
        name: "confirm",
        message: `Execute - '${command}'?`,
        choices: [
            { title: "Yes", value: "yes" },
            { title: "No", value: "no" },
        ],
    });
    if (confirm === "yes") {
        let commandParts = command.split(" ");
        let spawnOut = spawn(commandParts[0], commandParts.slice(1));
        spawnOut.stdout.on("data", function (data) {
            process.stdout.write(data.toString());
        });

        spawnOut.stderr.on("data", function (data) {
            process.stderr.write(data.toString());
        });
    }
};

const generateReadme = async () => {
    const flowJson = JSON.parse(fs.readFileSync("./flow.json", "utf-8"));
    let readme = "";
    for (let stack of ["testnet", "mainnet"]) {
        readme = readme.concat(`# ${stack.capitalize()} Supported Contracts\n`);
        readme = readme.concat("| Contract Name | Contract Address |\n");
        readme = readme.concat("| ------------- | ---------------- |\n");

        let flowAccountAddress;
        try {
            flowAccountAddress =
                flowJson.accounts[`${stack}-production-account`].address;
        } catch (err) {
            console.error(
                "Flow account has not been created or added to the flow.json yet."
            );
            return;
        }
        fcl.config.put(
            "accessNode.api",
            stack === "mainnet"
                ? "https://access-mainnet-beta.onflow.org"
                : "https://access-testnet.onflow.org"
        );
        const account = await fcl
            .send([fcl.getAccount(flowAccountAddress)])
            .then(fcl.decode);
        for (let contract of Object.keys(account.contracts).filter((c) =>
            c.includes("Shard")
        )) {
            const data = account.contracts[contract];
            for (let match of data.matchAll(
                /\s*(import (.*)\s*from\s*(.*))/g
            )) {
                let [full, m, name, address] = match;
                if (
                    !name.includes("NonFungibleToken") &&
                    !name.includes("MetadataViews")
                ) {
                    readme = readme.concat(`| ${name} | ${address} |\n`);
                }
            }
        }
        readme = readme.concat("\n");
    }
    fs.writeFileSync(
        path.resolve(__dirname, "./SUPPORTED_CONTRACTS.md"),
        readme
    );
};

(async () => {
    const { action } = await prompts({
        type: "select",
        name: "action",
        message: "Which action do you want to perform?",
        choices: [
            { title: "Generate contract", value: "generate-contract" },
            { title: "Diff deployed contract", value: "diff-contract" },
            { title: "Deploy contract", value: "deploy-contract" },
            { title: "Update readme", value: "update-readme" },
        ],
    });

    if (action === "generate-contract") {
        const { env } = await prompts({
            type: "select",
            name: "env",
            message: "Which env do you want to auto-generate a contract for?",
            choices: [
                { title: "emulator", value: "emulator" },
                { title: "testnet", value: "testnet" },
                { title: "mainnet", value: "mainnet" },
            ],
        });
        await generateContract(env);
    } else if (action === "diff-contract") {
        const { stack } = await prompts({
            type: "select",
            name: "stack",
            message: "Which stack do you want to diff a contract against?",
            choices: [
                { title: "testnet-staging", value: "testnet-staging" },
                { title: "testnet-production", value: "testnet-production" },
                { title: "mainnet-staging", value: "mainnet-staging" },
                { title: "mainnet-production", value: "mainnet-production" },
            ],
        });
        await diffDeployedContract(stack);
    } else if (action === "deploy-contract") {
        const { stack } = await prompts({
            type: "select",
            name: "stack",
            message: "Which stack do you want to deploy a contract against?",
            choices: [
                { title: "testnet-staging", value: "testnet-staging" },
                { title: "testnet-production", value: "testnet-production" },
                { title: "mainnet-staging", value: "mainnet-staging" },
                { title: "mainnet-production", value: "mainnet-production" },
            ],
        });
        await deployContract(stack);
    } else if (action === "update-readme") {
        const { confirmed } = await prompts({
            type: "confirm",
            name: "confirmed",
            message: "Generate the README with supported NFT collections?",
        });
        if (confirmed) {
            await generateReadme();
        }
    }
})();
