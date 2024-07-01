// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../lib/forge-std/src/Script.sol";
import "../src/GlipNft.sol";

contract MintNFT is Script {
    function run() external {
        address nftAddress = 0xYourDeployedContractAddress; // Replace with your deployed contract address
        address recipient = 0xRecipientAddress; // Replace with the recipient address

        vm.startBroadcast();
        NFT(nftAddress).mint(recipient);
        vm.stopBroadcast();
    }
}
