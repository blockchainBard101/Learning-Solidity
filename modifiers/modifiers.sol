// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract modifiers {
    address Owner;
    address previous_owner;
    uint256 num_prev_owner;

    constructor() {
        Owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == Owner,
         "Only the owner can access this function");
        _;
    }

    function change_owner(address _address) public isOwner {
        previous_owner = Owner;
        num_prev_owner += 1;
        Owner = _address;
    }

    function check_owner() public view returns (address) {
        return Owner;
    }

    function check_previous_owner() public view returns (address) {
        return previous_owner;
    }

    function check_num_prev_owners() public view isOwner returns (uint256) {
        return num_prev_owner;
    }
}
