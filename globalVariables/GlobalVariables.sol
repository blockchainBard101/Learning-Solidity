// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract GlobalVar {
    
    address public owner;
    address public myBlockhash;
    uint256 public difficulty;
    uint256  public gasLimit;
    uint256 public blockNumber;
    uint256 public timestammp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasPrice;
    bytes public callData;
    bytes4 public firstFour;

    constructor() {
        owner = msg.sender;
        myBlockhash = block.coinbase;
        difficulty = block.difficulty;
        // difficulty = block.prevrandao;
        gasLimit = block.gaslimit;
        timestammp = block.timestamp;
        blockNumber = block.number;

        gasPrice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        firstFour = msg.sig;
        // value = msg.value;
    }
}