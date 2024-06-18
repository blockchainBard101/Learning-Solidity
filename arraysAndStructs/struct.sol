// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Structs {
    struct Person {
        string name;
        uint256 age;
        address wallet_address;
        bool isEther;
    }

    Person[] people;

    function add_people(
        string memory name,
        uint256 age,
        address wallet_address,
        bool isEther
    ) public {
        Person memory person;
        person = Person(name, age, wallet_address, isEther);
        people.push(person);
    }

    function get_people(uint256 index)
        public
        view
        returns (
            string memory,
            uint256,
            address,
            bool
        )
    {
        Person memory p;
        p = people[index];
        return (p.name, p.age, p.wallet_address, p.isEther);
    }
}
