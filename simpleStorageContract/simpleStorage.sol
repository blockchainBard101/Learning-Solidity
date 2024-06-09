// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    int256 myNumber;

    function store(int256 number)public {
        myNumber = number;

    }

    function retrieve() public view returns (int256) {
        return myNumber;
    }
}