// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        // 被覆盖的函数必须添加virtual,用来覆盖的函数必须加override
        myFavoriteNumber = _newNumber + 5;
    }
}
