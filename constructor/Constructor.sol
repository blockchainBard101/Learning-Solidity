// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Constructor{
    address owner;
    constructor() {
        owner = msg.sender;
    }

    function check_owner() public view returns(address){
        return owner;
    } 

    function check_sender() public view returns(address){
        return msg.sender;
    }
}