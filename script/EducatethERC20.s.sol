// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {EducatethToken} from "../src/EducatethERC20.sol";

contract EducatethTokenDeploy is Script {
    function run() public {
        vm.startBroadcast();

        address owner = vm.envAddress("OWNER");

        EducatethToken token = new EducatethToken(
                                    owner, 
                                    "EducatethToken", 
                                    "EDT", 
                                    18, 
                                    1000 ether
                                );
        console.log("token contract deployed at: ", address(token));

        vm.stopBroadcast();
        
    }
}
