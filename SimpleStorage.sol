// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // this is the solidity version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 public favoriteNumber; // 0

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Both view and pure do not modify the state on the chain.A pure function does not read the state; it is based on the input parameters and does not depend on the contract's state variables.
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
