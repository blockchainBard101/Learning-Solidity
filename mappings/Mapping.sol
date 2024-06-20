// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Mapping {
    mapping(address => bool) internal register;

    function add(address _address) public {
        register[_address] = true;
    }

    function retrieve(address _address) public view returns (bool) {
        return register[_address];
    }
}
