// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint256 public favouriteNumber;

    uint256[] public listOfFavouriteNumbers;
    struct Person {
        uint256 myFavouriteNumber;
        string name;
    }
    Person public myFriend = Person(7, "Pat");

    // dynamic array
    // Person[] public listOfPeople;
    // static Array
    Person[] public listOfPeople;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        Person memory newPerson = Person(_favouriteNumber, _name);
        listOfPeople.push(newPerson);
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138
}
