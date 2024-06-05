// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Royalty.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

//
// Custom GlipNft function. Renamed to KryNftMetadataTest
//
contract KryNftMetadataTest is ERC721URIStorage, ERC721Royalty {
    uint256 private _currentTokenId = 0;

    struct Metadata {
        string customLicence;
        string customAuthor;
    }
    mapping(uint256 => Metadata) private _tokenMetadata;

    constructor() ERC721("KRY-test", "KryNNFTTest") {}

    function mintNFT(
        address recipient,
        string memory aTokenURI,
        string memory customLicence,
        string memory customAuthor
    ) public returns (uint256) {
        _currentTokenId += 1;
        uint256 newItemId = _currentTokenId;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, aTokenURI);
        _setTokenMetadata(newItemId, customLicence, customAuthor);
        return newItemId;
    }

    function _setTokenMetadata(uint256 tokenId, string memory testLicence, string memory testAuthor) internal {
        _tokenMetadata[tokenId] = Metadata(testLicence, testAuthor);
    }


    function supportsInterface(bytes4 interfaceId)
    public
    view
    override(ERC721URIStorage, ERC721Royalty)
    returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        super.tokenURI(tokenId);
        Metadata memory metadata = _tokenMetadata[tokenId];
        string memory json = string(abi.encodePacked(
            '{',
                '"name": "', name(), '",',
                '"description": "An NFT from the KRY-test collection.",',
                '"customLicence": "', metadata.customLicence, '",',
                '"customAuthor": "', metadata.customAuthor, '",',
                '"attributes": [',
                ']',
            '}'
        ));
        return string(abi.encodePacked("data:application/json,", json));
    }
}