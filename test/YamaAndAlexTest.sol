// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/YamaAndAlex.sol";

/**
 * @title Test suite for the YamaAndAlex NFT contract
 * @dev Implements testing for all functionalities of the YamaAndAlex contract
 */
contract YamaAndAlexTest is Test {
    YamaAndAlex yamaAndAlex;
    address testAddress = address(0x123);

    /**
     * @dev Setup function to initialize contract instance before each test
     */
    function setUp() public {
        // Initialize the contract with the mint start date set to the past
        yamaAndAlex = new YamaAndAlex(address(this), block.timestamp - 1);
    }

    /**
     * @dev Test successful minting of an NFT
     */
    function testSafeMint() public {
        yamaAndAlex.safeMint(testAddress);

        // Verify that the NFT is correctly minted to the specified address
        assertEq(yamaAndAlex.ownerOf(0), testAddress);
    }

    /**
     * @dev Test failure of minting an NFT before the mint start date
     */
    function testFailSafeMintBeforeStartDate() public {
        // Create a new contract with the mint start date set to the future
        YamaAndAlex newContract = new YamaAndAlex(address(this), block.timestamp + 1);

        // Attempt to mint should fail
        newContract.safeMint(testAddress);
    }

    /**
     * @dev Test failure of minting by a non-owner address
     */
    function testFailSafeMintNotOwner() public {
        // Simulate a call from an address that is not the owner
        vm.prank(testAddress);

        // Attempt to mint should fail
        yamaAndAlex.safeMint(testAddress);
    }

    /**
     * @dev Test the correct increment of token ID after minting
     */
    function testCurrentTokenId() public {
        uint256 tokenId = yamaAndAlex.currentTokenId();
        yamaAndAlex.safeMint(testAddress);

        // Verify that the token ID increments by 1 after minting
        assertEq(yamaAndAlex.currentTokenId(), tokenId + 1);
    }
}
