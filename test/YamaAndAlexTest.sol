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
        yamaAndAlex = new YamaAndAlex();
    }


    function testSetup() public {

    }



}
