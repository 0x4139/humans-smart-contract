const regeneratorRuntime = require("regenerator-runtime");
const HDWalletProvider = require("truffle-hdwallet-provider");
const LedgerWalletProvider = require("truffle-ledger-provider");

const fs = require("fs");

const ledgerOptions = {
  networkId: 1, // mainnet
  path: "44'/60'/0'/0", // ledger default derivation path
  askConfirm: false,
  accountsLength: 1,
  accountsOffset: 0,
};

const rinkebyProvider = new LedgerWalletProvider(ledgerOptions, "https://rinkeby.infura.io/v3/e0b87efb90774648bef21d2e9f9f05ac");
module.exports = {
  api_keys: {
    etherscan: "REH8C539KZD1BAKWRF1TQIV5JAC15WED6B",
  },
  plugins: ["truffle-security", "truffle-plugin-verify"],
  networks: {
    rinkeby: {
      provider: rinkebyProvider,
      network_id: 4,
      gas: 4600000,
    },
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
