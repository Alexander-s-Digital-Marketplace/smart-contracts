import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.28",
  networks: {
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/ZSDV7NU0M9XvdB3-DqGfaQjfbw9-Bi0s",
      accounts: ["0x9f5b69ba91e473d26d2d0de94080f6d22f1cd51fb8b64cb4d3ed6a3bd29eca38"]
    }
  }
};

export default config;

