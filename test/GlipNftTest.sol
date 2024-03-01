// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing necessary components for testing, including the test framework and interfaces for ERC standards.
import "forge-std/Test.sol";
import "../src/GlipNft.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";
import "@openzeppelin/contracts/interfaces/IERC2981.sol";

/**
 * @title Test Suite for the GlipNft NFT Contract
 * @dev Comprehensive testing of GlipNft contract functionalities.
 * This suite covers unit tests for minting, access control, and interface support.
 */
contract GlipNftTest is Test {
    GlipNft nftTest;

    // Define owner and non-owner addresses for access control tests.
    address owner = address(0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c);
    address nonOwner = address(0x123);

    /**
     * @dev Setup function to initialize contract instance before each test.
     * This setup ensures a fresh state for each test case.
     */
    function setUp() public {
        nftTest = new GlipNft();
    }

    /**
     * @dev Tests the minting function for a valid owner.
     * Ensures that the NFT is correctly minted and owned by the minter.
     */
    function testMintNFT() public {
        vm.startPrank(owner);
        uint256 tokenId = nftTest.mintNFT(owner, "tokenURI");
        assertEq(nftTest.ownerOf(tokenId), owner, "Owner should be the minter.");
        vm.stopPrank();
    }

    /**
     * @dev Tests the minting function's access control by attempting to mint with a non-owner account.
     * Expected to fail and thereby pass the test.
     */
    function testFailMintNFTByNonOwner() public {
        vm.startPrank(nonOwner);
        nftTest.mintNFT(nonOwner, "tokenURI"); // Expected to revert.
        vm.stopPrank();
    }

    /**
     * @dev Verifies the contract's support for standard interfaces including ERC721, ERC721Metadata, and ERC2981.
     * Also checks for the correct behavior when querying an unsupported interface.
     */
    function testSupportsInterface() public {
        // Test for ERC721 support.
        bytes4 erc721InterfaceId = type(IERC721).interfaceId;
        assertTrue(nftTest.supportsInterface(erc721InterfaceId), "Should support ERC721 interface");

        // Test for ERC721Metadata support.
        bytes4 erc721MetadataInterfaceId = type(IERC721Metadata).interfaceId;
        assertTrue(nftTest.supportsInterface(erc721MetadataInterfaceId), "Should support ERC721Metadata interface");

        // Test for ERC2981 support.
        bytes4 erc2981InterfaceId = type(IERC2981).interfaceId;
        assertTrue(nftTest.supportsInterface(erc2981InterfaceId), "Should support ERC2981 interface");

        // Test for non-supported interface.
        bytes4 fakeInterfaceId = 0xdeadbeef;
        assertFalse(nftTest.supportsInterface(fakeInterfaceId), "Should not support arbitrary interface");
    }

    /**
     * @dev Tests the tokenURI function to ensure it returns the correct metadata URI for a minted NFT.
     */
    function testTokenURI() public {
        string memory testURI = "https://example.com/token1";
        vm.startPrank(owner);
        uint256 tokenId = nftTest.mintNFT(owner, testURI);
        vm.stopPrank();

        // Verify the URI matches the expected value.
        string memory retrievedURI = nftTest.tokenURI(tokenId);
        assertEq(retrievedURI, testURI, "The retrieved URI should match the test URI");
    }
}
