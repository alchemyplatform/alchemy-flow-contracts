import { sendTransaction, executeScript, shallPass } from "flow-js-testing";

export const runScript = async (code, args) => {
    return (await executeScript({ code: code, args: args }))[0];
};

export const runFailingScript = async (code, args) => {
    let passed = false;
    try {
        await executeScript({ code: code, args: args });
        passed = true;
    } catch (e) {}
    expect(passed).toBe(false);
};

export const runTransaction = async (code, args, signers) => {
    return await shallPass(
        await sendTransaction({ code: code, args: args, signers: signers })
    );
};

export const runFailingTransaction = async (code, args, signers) => {
    let passed = false;
    try {
        await shallPass(
            await sendTransaction({ code: code, args: args, signers: signers })
        );
        passed = true;
    } catch (e) {}
    expect(passed).toBe(false);
};
