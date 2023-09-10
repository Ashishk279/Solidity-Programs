// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Basic constructor X
contract X{
    string public name;
    constructor(string memory _name){
        name = _name;
    }

}

// Basic constructor Y
contract Y{
    string public text;
    constructor(string memory _text){
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters.
// Pass the parrameters here to the inheritance list.
contract B is X("Input to X"), Y("Input to Y"){

}

contract C is X, Y{
    // Pass the parameters here in the constructor
    // similar to function modifiers.
    constructor (string memory _name, string memory _text) X(_name) Y(_text){}
    // Also Order is very important
}

// Parent constructors are always  called in the order of inheritance
// regardless of the order of parent contracts listed in the constructor of child contract

// Order of constructor called:
// 1. X
// 2. Y
// 3. D

contract D is X,Y{
    constructor() X("X is called") Y("Y is called"){}
}

// Order of constructors called:
// 1. X
// 2. Y
// 3. E

contract E is X, Y{
    constructor() Y("Y is called") X("X is called"){}
}
