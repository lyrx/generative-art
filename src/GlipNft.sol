// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Royalty.sol";

/**
 * @title GlipNft.sol NFT Contract
 */
contract GlipNft is ERC721URIStorage, ERC721Royalty, Ownable2Step {

    uint256 private _currentTokenId = 0;

    constructor() ERC721("GlipNft", "GLN") Ownable(address(0x977583aA8aaFEE37f60A1eee8eB273a1dF05F57c)) {}

    function mintNFT(address recipient, string memory aTokenURI) public onlyOwner returns (uint256) {
        _currentTokenId += 1;
        uint256 newItemId = _currentTokenId;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, aTokenURI);
        return newItemId;
    }


    function supportsInterface(bytes4 interfaceId)
    public
    view
    override(ERC721URIStorage, ERC721Royalty)
    returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    // Explicitly override tokenURI to use ERC721URIStorage's implementation
    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }


}
