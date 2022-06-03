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

export const validate = (res1, res2, e1, e2) => {
    if (e2) {
        // Treat limit errors as interchangeable.
        if (
            (e1.includes("computation exceeds limit") ||
                e1.includes(
                    "max interaction with storage has exceeded the limit"
                )) &&
            (e2.includes("computation exceeds limit") ||
                e2.includes(
                    "max interaction with storage has exceeded the limit"
                ))
        ) {
            return;
        }
        expect(e1).toEqual(e2);
    } else {
        if (e1) {
            // V1 was failing, check if staging returned something
            expect(res2 !== undefined).toEqual(true);
        } else {
            expect(res1).toEqual(res2);
        }
    }
};
