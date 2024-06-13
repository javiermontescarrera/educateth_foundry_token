// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "solmate/tokens/ERC20.sol";
import {Owned} from "solmate/auth/Owned.sol";

contract EducatethToken is ERC20, Owned {
    constructor(
        address owner,
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 _initialSupply
    ) ERC20(name, symbol, decimals) Owned(owner) {
        _mint(owner, _initialSupply);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
