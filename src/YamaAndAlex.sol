// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title YamaAndAlex NFT Contract
 * @dev Extends ERC721 Non-Fungible Token Standard basic implementation with URI storage and Ownable features.
 *      This contract allows for the minting of unique digital assets (NFTs).
 */
contract YamaAndAlex is ERC721, Ownable {
    uint256 private _tokenIdCounter;  // Internal counter for tracking token ids
    uint256 public mintStartDate;     // Public timestamp indicating when minting starts

    /**
     * @dev Constructor for initializing the NFT contract.
     * @param initialOwner Address that will be granted ownership of the contract.
     * @param _mintStartDate Timestamp from which the minting will be allowed.
     */
    constructor(address initialOwner, uint256 _mintStartDate) ERC721("YamaAndAlex", "YAA") Ownable(initialOwner) {
        mintStartDate = _mintStartDate;
    }

    /**
     * @dev Mints a new token to the specified address.
     *      Minting is restricted until the specified start date has passed.
     * @param to Address to which the NFT will be minted.
     * @notice Only the owner can mint new tokens and only after the mint start date.
     */
    function safeMint(address to) public onlyOwner {
        require(block.timestamp >= mintStartDate, "Minting not started yet");
        _safeMint(to, _tokenIdCounter);
        _tokenIdCounter++;
    }

    /**
     * @dev Returns the current token ID count.
     *      This count also represents the total number of tokens minted so far.
     * @return uint256 Current token ID count.
     */
    function currentTokenId() public view returns (uint256) {
        return _tokenIdCounter;
    }
}
