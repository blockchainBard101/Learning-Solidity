// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BasicArithmeticOperation {
    int256 public num1;
    int256 public num2;

    function inputs(int256 num_1, int256 num_2) public {
        num1 = num_1;
        num2 = num_2;
    }

    function add() public view returns(int256){
        return  num1 + num2;
    }

    function subtract() public view returns (int256){
        int256 a = num1 - num2;
        return a;
    }

    function multipy() public view returns(int256){
        return num1 * num2;
    }

    function division() public view returns (int256){
        return num1/num2;
    }
}