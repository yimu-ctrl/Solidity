// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // this is the solidity version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 public myFavoriteNumber; // 0

    // 自定义类型
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // 动态数组
    Person[] public listOfPeople; //[]

    // 使用自定义类型，必须在左侧和右侧都定义它的类型
    // Person public joe = Person(1, "Joe");
    // Person public jon = Person(6, "Jon");

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }

    // Both view and pure do not modify the state on the chain.A pure function does not read the state; it is based on the input parameters and does not depend on the contract's state variables.
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
