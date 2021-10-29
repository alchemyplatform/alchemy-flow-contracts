/* eslint-disable @typescript-eslint/camelcase */
module.exports = {
  apps: [
    {
      // Options reference: https://pm2.keymetrics.io/docs/usage/application-declaration/
      name: "alchemy-flow-contracts",
      script: "build/index.js",
      exec_mode: "cluster",
      instances: "max",
      autorestart: true,
      watch: false,
      max_memory_restart: "3G",
      exp_backoff_restart_delay: 100,
    },
  ],
};
