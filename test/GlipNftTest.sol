// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/GlipNft.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol";
import "@openzeppelin/contracts/interfaces/IERC2981.sol";

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

    function testSupportsInterface() public {
        // ERC721 interface ID
        bytes4 erc721InterfaceId = type(IERC721).interfaceId;
        assertTrue(nftTest.supportsInterface(erc721InterfaceId), "Should support ERC721 interface");

        // ERC721Metadata (URIStorage) interface ID
        bytes4 erc721MetadataInterfaceId = type(IERC721Metadata).interfaceId;
        assertTrue(nftTest.supportsInterface(erc721MetadataInterfaceId), "Should support ERC721Metadata interface");

        // ERC721Royalty interface ID
        bytes4 erc2981InterfaceId = type(IERC2981).interfaceId;
        assertTrue(nftTest.supportsInterface(erc2981InterfaceId), "Should support ERC2981 interface");

        // An arbitrary interface ID not supported by the contract
        bytes4 fakeInterfaceId = 0xdeadbeef;
        assertFalse(nftTest.supportsInterface(fakeInterfaceId), "Should not support arbitrary interface");
    }
    function testTokenURI() public {
        string memory testURI = "https://example.com/token1";
        // Mint a new NFT
        vm.startPrank(owner);
        uint256 tokenId = nftTest.mintNFT(owner, testURI);
        vm.stopPrank();

        // Retrieve the token URI and compare
        string memory retrievedURI = nftTest.tokenURI(tokenId);
        assertEq(retrievedURI, testURI, "The retrieved URI should match the test URI");
    }



}
