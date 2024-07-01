// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../lib/forge-std/src/Script.sol";
import "../src/GlipNft.sol";

contract MintNFT is Script {
    function run() external {
        address nftAddress = 0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c; // Replace with your deployed contract address
        address recipient = 0x5d1fE9DE7FA153C47F2a39D5B00CdfC141e7079c; // Replace with the recipient address

        vm.startBroadcast();
        GlipNft(nftAddress).mintNFT(recipient, 'https://api.glip.market/api/openai/ebooks/metadata?id=31749955b9d55c0891a6ba271e1b6f2fc3a80dde1d42720b34ffb844781a118f');
        vm.stopBroadcast();
    }
}
