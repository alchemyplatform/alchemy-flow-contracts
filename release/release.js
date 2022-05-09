import path from "path";
import fs from "fs";
import prompts from "prompts";
import fcl from "@onflow/fcl";
import colors from "colors";
import * as Diff from "diff";
const __dirname = path.resolve();

// String helper function
Object.defineProperty(String.prototype, "capitalize", {
    value: function () {
        return this.charAt(0).toUpperCase() + this.slice(1);
    },
    enumerable: false,
});

const generateContract = async (env) => {
    const getNFTIDs = fs.readFileSync(
        path.resolve(__dirname, `./src/cadence/scripts/${env}/getNFTIDs.cdc`),
        "utf-8"
    );
    const getNFTs = fs.readFileSync(
        path.resolve(__dirname, `./src/cadence/scripts/${env}/getNFTs.cdc`),
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
    const addresses = new Set();
    for (let match of getNFTIDs.matchAll(/\s*(import .*)/g)) {
        let [full, key, value] = match;
        const importStatement = key.trim();
        addresses.add(importStatement);
    }
    for (let match of getNFTs.matchAll(/\s*(import .*)/g)) {
        let [full, key] = match;
        const importStatement = key.trim();
        addresses.add(importStatement);
    }
    // First add all imports
    let generatedCadenceContract = cadenceContractTemplate.replace(
        /\${Begin NFT addresses}(.|\n)*\${End NFT addresses}/,
        [...addresses].sort().join("\n")
    );

    // Update Contract name
    generatedCadenceContract = generatedCadenceContract.replace(
        "${Env}",
        env.capitalize()
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

    const getNFTsMethods = [];
    for (let match of getNFTs.matchAll(/pub fun (.*)\(/g)) {
        let [full, key] = match;
        if (key === "main") {
            // Don't reference this.
            continue;
        }
        getNFTsMethods.push(key);
    }

    // Add main getNFTs method
    generatedCadenceContract = generatedCadenceContract.replace(
        /\${Begin getNFTs}(.|\n)*\${End getNFTs}/,
        getNFTs
            // Change the method name
            .match(/(pub fun main(.|\n)*^}$)/m)[0]
            .replace("main", "getNFTs")
            // Update references to include .self
            .replace(
                new RegExp(
                    `(?<!pub fun\\s+)(${getNFTsMethods.join("|")})\\b`,
                    "g"
                ),
                "self.$&"
            )
            .split("\n")
            // Make indendations
            .map((str) => {
                return "    " + str;
            })
            .join("\n")
    );

    // Add main getNFTIDs method
    generatedCadenceContract = generatedCadenceContract.replace(
        /\${Begin getNFTIDs}(.|\n)*\${End getNFTIDs}/,
        getNFTIDs
            .match(/(pub fun main(.|\n)*?^}$)/m)[0]
            .replace("main", "getNFTIDs")
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
            `./generated/cadence/contracts/AlchemyMetadataWrapper${env.capitalize()}.cdc`
        ),
        generatedCadenceContract
    );
};

const diffDeployedContract = async (stack) => {
    const flowJson = JSON.parse(fs.readFileSync("./flow.json", "utf-8"));
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
    const deployedContract =
        account.contracts[
            stack.startsWith("mainnet")
                ? "AlchemyMetadataWrapperMainnet"
                : "AlchemyMetadataWrapperTestnet"
        ] || "";
    let generatedContract;
    try {
        generatedContract = fs.readFileSync(
            path.resolve(
                __dirname,
                `./generated/cadence/contracts/AlchemyMetadataWrapper${stack
                    .split("-")[0]
                    .capitalize()}.cdc`
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

(async () => {
    const { action } = await prompts({
        type: "select",
        name: "action",
        message: "Which action do you want to perform?",
        choices: [
            { title: "Generate contract", value: "generate-contract" },
            { title: "Diff deployed contract", value: "diff-contract" },
            { title: "Deploy contract", value: "deploy-contract" },
        ],
    });

    if (action === "generate-contract") {
        const { env } = await prompts({
            type: "select",
            name: "env",
            message: "Which env do you want to auto-generate a contract for?",
            choices: [
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
        throw new Error("TODO");
    }
})();
