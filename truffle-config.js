const HDWalletProvider = require("truffle-hdwallet-provider");
const fs = require("fs");
module.exports = {
  plugins: ["truffle-security"],
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*",
    },
    loc_development_development: {
      network_id: "*",
      port: 8545,
      host: "127.0.0.1",
    },
  },
  compilers: {
    solc: {
      version: "^0.8.2",
      settings: {
        optimizer: {
          enabled: true,
          runs: 400,
        },
      },
    },
  },
};
