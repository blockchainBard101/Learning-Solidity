// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract AssertRevertRequire{
    uint256 public odd_num;
    uint256 public even_num;
    int256 public negative_num;

    function input_odd_number(uint256 _num) public{
        odd_num = _num;
        assert(_num % 2 ==1 );
    }

    function input_even_number(uint256 _num) public{
        if (_num % 2 == 1){
            revert("Not an even Number");
        }
        even_num = _num;
    }

    function input_negative_number(int256 _num) public {
        require(_num < 0, "Number is not a negative number");
        negative_num = _num;
    }
}