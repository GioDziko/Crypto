// https://eth-goerli.g.alchemy.com/v2/tfmvdjxYNCZS3IikHinQEZ5b-2AtZXLA
require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/tfmvdjxYNCZS3IikHinQEZ5b-2AtZXLA",
      accounts: [
        "b90b4884b020e4d787d66c74f325d343c529d794afcefdde8c4b8e8d666dd0b7",
      ],
    },
  },
};
