import path from "path";
import { init, emulator } from "flow-js-testing";
import { createAccounts, deployContracts } from "./lib/common";

const cadenceTestingSuite = describe("Contract Deployment Tests", () => {
    let adminAccount,
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

    describe("Deployment testing", () => {
        test("Should create accounts", async () => {
            ({ adminAccount, addressMap } = await createAccounts());
        });

        test("Should deploy contracts", async () => {
            await deployContracts(adminAccount, addressMap);
        });
    });
});

export default cadenceTestingSuite;
