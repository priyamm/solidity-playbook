// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract Lottery {

    uint256 public index;

    struct Person {
        string name;
        uint256 numer;
    }

    Person[] person;

    function retrieve() public view returns (Person[] memory) {
        return person;
    }

    function add(string memory _name, uint256 _number) public {
        person.push(Person(_name, _number));
        index++;
    }
}

