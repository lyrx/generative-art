# GLIP NFT Contract

## Overview
`GLIP` is a Solidity smart contract for creating Non-Fungible Tokens (NFTs) following the ERC721 standard. It extends the OpenZeppelin ERC721 implementation with URI storage and Ownable features, allowing for the creation and management of unique digital assets.

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

# GLIP Test Suite

## Overview
This test suite is designed to validate the functionality and enforce the integrity of the `GLIP` NFT contract. It uses Foundry's testing framework to simulate various scenarios and ensure contract reliability.

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

This will run all the defined test cases and output the results, ensuring the `GLIP` contract behaves as expected under various conditions.

## Deployment


```shell

# Verification (Work in progress)
forge verify-contract  \
--chain-id 80001  \
--num-of-optimizations 200 \
--etherscan-api-key $ETHERSCAN_API_KEY  \
--compiler-version v0.8.0+commit.c7dfd78e     \
0xcfB5f338096c56353FEfD44A146461C21b268CcC  \
src/GlipNft.sol:GlipNft


# Polygon MUMBAI unverified
forge create src/GlipNft.sol:GlipNft --private-key $PRIVATE_KEY --rpc-url $POLYGON_MUMBAI 
Deployer: 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c
Deployed to: 0x1F344957f6E4B3fAc9e29d772d2E1e4a123041cd
Transaction hash: 0x9207e6900ebb782e2c22d77ada2ac3fa989eeb9c649909247f275e7bf089bf60

# Polygon MAINNET unverified
forge create src/GlipNft.sol:GlipNft --private-key $PRIVATE_KEY --rpc-url $POLYGON_MAINNET 

Deployer: 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c
Deployed to: 0xE12b9421D8b771BBfA67779e9d89Ee18054735aB
Transaction hash: 0x8ef912b256e8efca61ecedbe011ab51df898217ad71c40e553fe60b8df9295c3




                                                                                                             
```

