// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

// Global Variable
contract GlobalVariable{
    address public owner;
    address public Myblockhash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public value;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public Firstfour;
    constructor(){
        owner = msg.sender;

        Myblockhash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasprice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        Firstfour = msg.sig;
        // value = msg.value;
        //nowOn = .now;



    }
}