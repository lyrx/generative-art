// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/GlipNft.sol";

/**
 * @title Test suite for the GlipNft.sol NFT contract
 * @dev Implements testing for all functionalities of the GlipNft.sol contract
 */
contract GlipNftTest is Test {
    GlipNft yamaAndAlex;
    address testAddress = address(0x123);





    /**
     * @dev Setup function to initialize contract instance before each test
     */
    function setUp() public {
        yamaAndAlex = new GlipNft();
    }


    function testSetup() public {
    }

    function testDeploy() public {
    }



}
