// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

//--Function:
//-- A function is basically a group of code be reused anywhere in the program, which generally saves the excessive
//-- use of memory and decrease the runtiem of the program. Creating a function reduces the need of writing the same 
//-- code over and over again. With the help of functions, aprogram can be divided into many small pices of code for
//-- better understanding and managing.

//-- Syntax:
// function function_name(parameter _list) scope returns(return type){
//     // block of code
// }

// Declaring a function
// - Modifying state variables  - Sending Ether via calls   - Emitting events     - marked pure or view 
// - Creating other contracts   - assembly certain opcodes  - Using self-destruct - Using low-level calls

contract LearnFunction{
    uint256 public hey;

    // Get data with the help of function
    // function getInfo() public view returns(uint256){
    //     return hey;
    // }

    // function updateData(uint256 _hey) public{
    //     hey = _hey;
    // }

    function get(uint256 _a, uint256 _b) public returns(uint256){
        uint256 newNumber = _a + _b;
        hey = newNumber;
        return hey;

    }
}