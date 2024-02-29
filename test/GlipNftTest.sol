// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/GlipNft.sol";

/**
 * @title Test suite for the GlipNft.sol NFT contract
 * @dev Implements testing for all functionalities of the GlipNft.sol contract
 */
contract GlipNftTest is Test {
    GlipNft nftTest;

    address owner = address(0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c);
    address nonOwner = address(0x123);


    /**
     * @dev Setup function to initialize contract instance before each test
     */
    function setUp() public {
        nftTest = new GlipNft();
    }

    function testMintNFT() public {
        // Simulate being the owner
        vm.startPrank(owner);
        uint256 tokenId = nftTest.mintNFT(owner, "tokenURI");
        assertEq(nftTest.ownerOf(tokenId), owner, "Owner should be the minter.");
        vm.stopPrank();
    }

    function testFailMintNFTByNonOwner() public {
        // Attempt to mint by a non-owner, should fail
        vm.startPrank(nonOwner);
        nftTest.mintNFT(nonOwner, "tokenURI");
        // This call should revert, and the test will pass if it does
        vm.stopPrank();
    }




}
