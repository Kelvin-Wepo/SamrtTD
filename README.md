# ShambaSmart Token and LandContract

## Introduction
ShambaSmart is a Solidity smart contract project that includes two main contracts: ShambaSmart ERC20 token and LandContract for managing land information. The contracts are developed using Solidity version 0.8.0 and utilize OpenZeppelin's ERC20, Ownable, ERC20Votes, and ERC20Permit contracts for functionality and security.

## ShambaSmart ERC20 Token
The ShambaSmart ERC20 token is a basic implementation of an ERC20 token with added functionality for permit approvals (using ERC20Permit) and voting (using ERC20Votes). It includes the following features:
- Initial supply of 10,000 tokens minted to the contract deployer.
- Ability for the contract owner to mint additional tokens.
- Overrides for token transfer hooks from ERC20Votes.

## LandContract
The LandContract is a simple contract for managing land information. It includes a mapping to store land details based on a title number and provides functions to set and get land information. The struct `Land` includes fields for title number, estimate size, map sheet number, owner's name, national ID, seal, and date of issue.

## Usage
1. Deploy the ShambaSmart contract by providing an initial owner address.
2. Use the `mint` function to mint new tokens (only callable by the contract owner).
3. Use the `setLandInfo` function in the LandContract to set land information.
4. Use the `getLandInfo` function in the LandContract to retrieve land information.

## Development Environment
- Solidity version: 0.8.0
- OpenZeppelin version: 4.5.0

## License
This project is licensed under the MIT license. See the [LICENSE](./LICENSE) file for details.

---


