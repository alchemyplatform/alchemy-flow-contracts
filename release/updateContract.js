import path from "path";
import fs from "fs";
import prompts from "prompts";
const __dirname = path.resolve();

// String helper function
Object.defineProperty(String.prototype, "capitalize", {
    value: function () {
        return this.charAt(0).toUpperCase() + this.slice(1);
    },
    enumerable: false,
});

const generateContract = async (stack) => {
    const env = stack.slice(0, stack.indexOf("-"));
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

(async () => {
    const response = await prompts({
        type: "text",
        name: "stack",
        message:
            "Which stack do you want to release (testnet-staging, testnet-production, mainnet-staging, mainnet-production)?",
        validate: (value) =>
            value.match(
                /(testnet-staging|testnet-production|mainnet-staging|mainnet-production)/
            ) === null
                ? `Valid options are: testnet-staging, testnet-production, mainnet-staging, mainnet-production`
                : true,
    });

    const stack = response.stack;
    if (stack === "testnet-staging") {
        await generateContract(stack);
    } else if (stack === "testnet-production") {
        throw new Error("Not Implemented Yet");
    } else if (stack === "mainnet-staging") {
        throw new Error("Not Implemented Yet");
    } else if (stack === "mainnet-production") {
        throw new Error("Not Implemented Yet");
    } else {
        throw new Error(`Invalid Stack ${stack}`);
    }
})();
