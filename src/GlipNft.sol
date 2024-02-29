// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title GlipNft.sol NFT Contract
 */
contract GlipNft is ERC721 {


    constructor() ERC721("GlipNft", "GLN")  {

    }

}
