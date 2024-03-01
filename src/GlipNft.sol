// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing ERC721URIStorage to enable token URI storage capabilities
// Importing Ownable2Step for advanced ownership management with a two-step transfer process
// Importing ERC721Royalty to support royalty information for ERC-721 tokens
import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Royalty.sol";

/**
 * @title GlipNft NFT Contract
 * @dev Extends ERC721 Non-Fungible Token Standard basic implementation with URI storage and royalty functionality.
 * Incorporates two-step ownership transfer from the Ownable2Step mixin for enhanced security.
 */
contract GlipNft is ERC721URIStorage, ERC721Royalty, Ownable2Step {
    // State variable to keep track of the current token ID
    uint256 private _currentTokenId = 0;

    /**
     * @dev Initializes the contract by setting a `name` and a `symbol` to the token collection.
     * Inherits constructor from Ownable2Step to set initial owner.
     */
    constructor() ERC721("GlipNft", "GLN") Ownable(address(0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c)) {}

    /**
     * @dev Public function to mint a new NFT.
     * @param recipient The address that will own the minted NFT
     * @param aTokenURI The token URI of the minted NFT
     * @return uint256 Returns the newly minted token's ID
     * Requirements:
     * - the caller must be the owner of the contract.
     */
    function mintNFT(address recipient, string memory aTokenURI) public onlyOwner returns (uint256) {
        _currentTokenId += 1;
        uint256 newItemId = _currentTokenId;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, aTokenURI);
        return newItemId;
    }

    /**
     * @dev Override for `supportsInterface` function to automatically check the combinations
     * of interfaces supported by the contract (ERC721, ERC721URIStorage, ERC721Royalty).
     * @param interfaceId The interface identifier, as specified in ERC-165
     * @return bool True if the contract supports the interface
     */
    function supportsInterface(bytes4 interfaceId)
    public
    view
    override(ERC721URIStorage, ERC721Royalty)
    returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    /**
     * @dev Override for `tokenURI` to retrieve the URI for a given token ID. Uses ERC721URIStorage's implementation.
     * @param tokenId The ID of the token to query the URI for
     * @return string memory Returns the token URI
     */
    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }
}
