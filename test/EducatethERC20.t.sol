// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import { EducatethToken } from "../src/EducatethERC20.sol";

contract CounterTest is Test {
    EducatethToken public token;
    address owner = address(0x0);

    function setUp() public {
        token = new EducatethToken(
                    owner, 
                    "EducatethToken", 
                    "EDT", 
                    18, 
                    1000 ether
                );
    }

    function testSuccess_InitialSupply() public view {
        uint256 ownerBalance = token.balanceOf(owner);
        console.log(ownerBalance);

        assertEq(ownerBalance, 1000 ether);
    }

}
