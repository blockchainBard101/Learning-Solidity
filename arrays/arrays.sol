// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Arrays{
    uint256[] numbers; // Dynamic Arrays
    uint256[5] five_numbers; //Static Arrays

    function sa_size() public view returns(uint256){
        return five_numbers.length;
    }

    function da_size() public view returns(uint256){
        return numbers.length;
    }

    function add_to_da(uint256 value) public {
        numbers.push(value);
    }

    function get_from_da(uint256 index) public view returns(uint256){
        return numbers[index];
    }

    function get_last_value_da() public view returns (uint256){
        require(numbers.length > 0, "empty array");
        return numbers[numbers.length-1];
    }

    function remove_last_from_da() public {
        require(numbers.length > 0, "empty array");
        numbers.pop();
    }

    function remove_from_da(uint256 index) public {
        require(index < numbers.length, "Index out of bounds");
        for (uint256 i = index; i < numbers.length -1 ; i++ ){
            numbers[i] = numbers[i + 1];
        }

        numbers.pop();
    }

    function update_da(uint256 index, uint256 value) public {
        require(index < numbers.length, "Index out of bounds");
        numbers[index] = value;
    }
}