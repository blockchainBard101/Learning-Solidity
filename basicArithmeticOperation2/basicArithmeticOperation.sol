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
        int256 a = num1 + num2;
        return a;
    }

    function subtract() public view returns(int256){
        int256 a = num1 - num2;
        return a;
    }

    function divide() public view returns(int256){
        require(num1 != 0 && num2 != 0, "num1 or num2 is Zero");
        int256 a = num1/num2;
        return a;
    }

    function multiply() public view returns(int256){
        int256 a = num1 * num2;
        return a;
    }

    function modulus() public view returns(int256){
        require(num1 >= 0 && num2 >= 0 && num1 > num2, "num1 or num2 is less than Zero or num1 < num2");
        int256 a = num1%num2;
        return a;
    }

}