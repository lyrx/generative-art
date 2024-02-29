# YamaAndAlex NFT Contract

## Overview
`YamaAndAlex` is a Solidity smart contract for creating Non-Fungible Tokens (NFTs) following the ERC721 standard. It extends the OpenZeppelin ERC721 implementation with URI storage and Ownable features, allowing for the creation and management of unique digital assets.

## Features
- ERC721 NFT implementation with URI storage.
- Mint start date functionality to control when NFTs can be minted.
- Ownable, allowing only the owner to mint new tokens.

## Contract Deployment
To deploy the contract, provide the initial owner's address and the mint start date (as a UNIX timestamp) in the constructor.

## Contract Functions
- `safeMint(address to)`: Mints an NFT to the specified address.
- `currentTokenId()`: Returns the current token ID count, representing the total number of tokens minted.

---

# YamaAndAlex Test Suite

## Overview
This test suite is designed to validate the functionality and enforce the integrity of the `YamaAndAlex` NFT contract. It uses Foundry's testing framework to simulate various scenarios and ensure contract reliability.

## Test Scenarios
- **Test Safe Minting**: Ensures that NFTs can be minted successfully post the mint start date.
- **Test Minting Before Start Date**: Verifies that minting cannot occur before the specified start date.
- **Test Minting By Non-Owner**: Confirms that only the contract owner can mint new tokens.
- **Test Token ID Increment**: Checks if the token ID is correctly incremented after each mint.

## Running Tests
To run the tests, execute the following command in the Foundry environment:

```shell
forge test
```

This will run all the defined test cases and output the results, ensuring the `YamaAndAlex` contract behaves as expected under various conditions.

## Deployment


```shell

# Anvil
# Take the private key from the startup message of anvil.
forge create src/YamaAndAlex.sol:YamaAndAlex --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80  --rpc-url $ANVIL_LOCAL 

# sepolia testnet
forge create src/YamaAndAlex.sol:YamaAndAlex --private-key $PRIVATE_KEY  --rpc-url $SEPOLIA_TESTNET


forge create src/YamaAndAlex.sol:YamaAndAlex --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_TESTNET

Deployer: 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c
Deployed to: 0x84a5Be9aaEab6f90Ca10fc49F941348ab744a9b0
Transaction hash: 0xa5003db6fceac7ea28dbfe9102b16572757381516f1cb2ba0c8d50572343807c



# Mainnet
forge create src/YamaAndAlex.sol:YamaAndAlex --private-key $PRIVATE_KEY --rpc-url $ETHEREUM_MAINNET --gas-price 50000000000




                                                                                                             
```

