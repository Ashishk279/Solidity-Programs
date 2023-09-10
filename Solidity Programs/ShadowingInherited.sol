// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Shadowing Inherited

contract A{
    string public name = "Contract A";

    function getName() public view returns (string memory){
        return name;
    }

}

// Shadowing is disallowed in Solidity 0.6v.
// This will not compile
// contract B is A {
//     string public name = "Contract B";
//  }

contract C is A {
    // This is the correct  way to override inherited state variables.
    constructor(){
        name = "Contract C";
    }

    // C.getName returns "Contract C"
    
}