// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Events:

contract Event{
    // Event declaration
    // Up to 3 parameters can be indexed. 
    // Indexed parameters helps you filter the logs by the indexed parameter

    event log(address indexed sender, string message);
    event AnotherLog();

    function test() public{
        emit log(msg.sender, "Hello world!");
        emit log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}