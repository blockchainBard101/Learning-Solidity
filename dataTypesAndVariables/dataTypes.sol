// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract DataTypes {
    uint256 public myNumber = 101;
    int256 public number = -101;
    bool public isDeveloper = true;
    string public name = "Blockchain Bard";
    address public metamaskAddress = 0xf483c898e6b9B45e24ff7b79cD02c196ab81F291;

    function update_variables(uint256 new_myNuber, int256 new_number, bool new_isDeveloper, string memory new_name, address new_metamaskAdress) public returns(int256, uint256, bool, string memory, address){
        myNumber = new_myNuber;
        number = new_number;
        isDeveloper = new_isDeveloper;
        name = new_name;
        metamaskAddress = new_metamaskAdress;

        return (new_number,new_myNuber, new_isDeveloper, new_name, new_metamaskAdress);
    }

}