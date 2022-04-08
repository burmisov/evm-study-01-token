require("@nomiclabs/hardhat-waffle");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.13",
  networks: {
    hardhat: {
      chainId: 1337,
    },
    fantomtest: {
      url: "https://rpc.testnet.fantom.network/",
      accounts: [
        "0xd1b91f62586928f59136ffcbdbf5b036b913b62f997c4625ea5aa3a4335da695",
      ],
    },
  },
};
