# GLIP NFT Contract

## Overview
`GLIP` is a Solidity smart contract for creating Non-Fungible Tokens (NFTs) following the ERC721 standard. It extends the OpenZeppelin ERC721 implementation with URI storage and Ownable features, allowing for the creation and management of unique digital assets.

## Features
- ERC721 NFT implementation with URI storage.
- Mint start date functionality to control when NFTs can be minted.
- Ownable, allowing only the owner to mint new tokens.

## Setup

```shell
. env.sh
# env.sh is not checked in

```
env.sh:
```shell

PUBLIC_KEY=
PRIVATE_KEY=
INFURA_API_KEY=
SEPOLIA_TESTNET=
GOERLI_TESTNET=
ETHEREUM_MAINNET=
POLYGON_MAINNET=
POLYGON_MUMBAI=
ETHERSCAN_API_KEY=5
BASE="https://base-rpc.publicnode.com"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.foundry/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm use v20.10.0


```


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


## ABI

```json 


 [
    {
      "type": "constructor",
      "inputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "acceptOwnership",
      "inputs": [],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "approve",
      "inputs": [
        {
          "name": "to",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "balanceOf",
      "inputs": [
        {
          "name": "owner",
          "type": "address",
          "internalType": "address"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "getApproved",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "address",
          "internalType": "address"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "isApprovedForAll",
      "inputs": [
        {
          "name": "owner",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "operator",
          "type": "address",
          "internalType": "address"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "bool",
          "internalType": "bool"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "mintNFT",
      "inputs": [
        {
          "name": "recipient",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "aTokenURI",
          "type": "string",
          "internalType": "string"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "name",
      "inputs": [],
      "outputs": [
        {
          "name": "",
          "type": "string",
          "internalType": "string"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "owner",
      "inputs": [],
      "outputs": [
        {
          "name": "",
          "type": "address",
          "internalType": "address"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "ownerOf",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "address",
          "internalType": "address"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "pendingOwner",
      "inputs": [],
      "outputs": [
        {
          "name": "",
          "type": "address",
          "internalType": "address"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "renounceOwnership",
      "inputs": [],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "royaltyInfo",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "salePrice",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "safeTransferFrom",
      "inputs": [
        {
          "name": "from",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "to",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "safeTransferFrom",
      "inputs": [
        {
          "name": "from",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "to",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "data",
          "type": "bytes",
          "internalType": "bytes"
        }
      ],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "setApprovalForAll",
      "inputs": [
        {
          "name": "operator",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "approved",
          "type": "bool",
          "internalType": "bool"
        }
      ],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "supportsInterface",
      "inputs": [
        {
          "name": "interfaceId",
          "type": "bytes4",
          "internalType": "bytes4"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "bool",
          "internalType": "bool"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "symbol",
      "inputs": [],
      "outputs": [
        {
          "name": "",
          "type": "string",
          "internalType": "string"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "tokenURI",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [
        {
          "name": "",
          "type": "string",
          "internalType": "string"
        }
      ],
      "stateMutability": "view"
    },
    {
      "type": "function",
      "name": "transferFrom",
      "inputs": [
        {
          "name": "from",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "to",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "function",
      "name": "transferOwnership",
      "inputs": [
        {
          "name": "newOwner",
          "type": "address",
          "internalType": "address"
        }
      ],
      "outputs": [],
      "stateMutability": "nonpayable"
    },
    {
      "type": "event",
      "name": "Approval",
      "inputs": [
        {
          "name": "owner",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "approved",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "indexed": true,
          "internalType": "uint256"
        }
      ],
      "anonymous": false
    },
    {
      "type": "event",
      "name": "ApprovalForAll",
      "inputs": [
        {
          "name": "owner",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "operator",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "approved",
          "type": "bool",
          "indexed": false,
          "internalType": "bool"
        }
      ],
      "anonymous": false
    },
    {
      "type": "event",
      "name": "BatchMetadataUpdate",
      "inputs": [
        {
          "name": "_fromTokenId",
          "type": "uint256",
          "indexed": false,
          "internalType": "uint256"
        },
        {
          "name": "_toTokenId",
          "type": "uint256",
          "indexed": false,
          "internalType": "uint256"
        }
      ],
      "anonymous": false
    },
    {
      "type": "event",
      "name": "MetadataUpdate",
      "inputs": [
        {
          "name": "_tokenId",
          "type": "uint256",
          "indexed": false,
          "internalType": "uint256"
        }
      ],
      "anonymous": false
    },
    {
      "type": "event",
      "name": "OwnershipTransferStarted",
      "inputs": [
        {
          "name": "previousOwner",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "newOwner",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        }
      ],
      "anonymous": false
    },
    {
      "type": "event",
      "name": "OwnershipTransferred",
      "inputs": [
        {
          "name": "previousOwner",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "newOwner",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        }
      ],
      "anonymous": false
    },
    {
      "type": "event",
      "name": "Transfer",
      "inputs": [
        {
          "name": "from",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "to",
          "type": "address",
          "indexed": true,
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "indexed": true,
          "internalType": "uint256"
        }
      ],
      "anonymous": false
    },
    {
      "type": "error",
      "name": "ERC2981InvalidDefaultRoyalty",
      "inputs": [
        {
          "name": "numerator",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "denominator",
          "type": "uint256",
          "internalType": "uint256"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC2981InvalidDefaultRoyaltyReceiver",
      "inputs": [
        {
          "name": "receiver",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC2981InvalidTokenRoyalty",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "numerator",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "denominator",
          "type": "uint256",
          "internalType": "uint256"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC2981InvalidTokenRoyaltyReceiver",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "receiver",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721IncorrectOwner",
      "inputs": [
        {
          "name": "sender",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        },
        {
          "name": "owner",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721InsufficientApproval",
      "inputs": [
        {
          "name": "operator",
          "type": "address",
          "internalType": "address"
        },
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721InvalidApprover",
      "inputs": [
        {
          "name": "approver",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721InvalidOperator",
      "inputs": [
        {
          "name": "operator",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721InvalidOwner",
      "inputs": [
        {
          "name": "owner",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721InvalidReceiver",
      "inputs": [
        {
          "name": "receiver",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721InvalidSender",
      "inputs": [
        {
          "name": "sender",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "ERC721NonexistentToken",
      "inputs": [
        {
          "name": "tokenId",
          "type": "uint256",
          "internalType": "uint256"
        }
      ]
    },
    {
      "type": "error",
      "name": "OwnableInvalidOwner",
      "inputs": [
        {
          "name": "owner",
          "type": "address",
          "internalType": "address"
        }
      ]
    },
    {
      "type": "error",
      "name": "OwnableUnauthorizedAccount",
      "inputs": [
        {
          "name": "account",
          "type": "address",
          "internalType": "address"
        }
      ]
    }
  ]


```


This will run all the defined test cases and output the results, ensuring the `GLIP` contract behaves as expected under various conditions.

## Deployment


```shell


# BASE: Get balance
cast balance $PUBLIC_KEY --rpc-url $BASE

# BASE unverified
forge create src/GlipNft.sol:GlipNft --private-key $PRIVATE_KEY --rpc-url $BASE 

Deployer: 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c
Deployed to: 0xc36b1A1f7f0447c5860B902DEB4eB8c9F1f7A4b4
Transaction hash: 0x00289a14cda63ff04dbe06a09ded08a1ce400c25a15919cbc24543fd0c76252a

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


# Polygon MAINNET flattened and verified:
forge create src/GlipNft.sol:GlipNft --private-key $PRIVATE_KEY --rpc-url $POLYGON_MAINNET 

Deployer: 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c
Deployed to: 0xe264085795e13334D5d386C5E3B46795E380a815
Transaction hash: 0x845c80698942ea8721737568b8fc10d88c7b9304b61e2b33dea854968261415d

# Polygon AMOY flattened but not yet verified:
# Block explorer: https://amoy.polygonscan.com/address/0xcfB5f338096c56353FEfD44A146461C21b268CcC#code
# ChatGPT Audit: https://chatgpt.com/share/886aaca2-78f2-47ee-ab90-5c52722dc9dd
forge create src/GlipNft.sol:GlipNft --private-key $PRIVATE_KEY --rpc-url $POLYGON_AMOY 

Deployer: 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c
Deployed to: 0x5d1fE9DE7FA153C47F2a39D5B00CdfC141e7079c
Transaction hash: 0x22f92f3a03db033e580187d7c2480def8f7a1a21878c0a2d3224a27545a0be53


forge script script/MintNFT.s.sol:MintNFT --broadcast --rpc-url $POLYGON_AMOY --private-key $PRIVATE_KEY


 Compiling 24 files with Solc 0.8.23




                                                                                                             
```



Use `forge flatten` to flatten the sources, and then `forge config` to find out about the solc compiler
settings being used by forge when doing the compilation. 

I redeployed the flattened contract. I then used 
[polygonscan](https://polygonscan.com) to verify the single file (flattened)
contract. I had to use the values for the compiler settings (test runs, target version, ...)
when filling out the form.

