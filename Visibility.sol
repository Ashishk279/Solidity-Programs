// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Visibility:
// Function and state variable have to declare whether they are accessible by other contracts.
// Function can be declared as:
// 1. public - any contract and account can call
// 2. private - only inside the contract that defines the function
// 3. internal - only inside contract that inherits and internal function
// 4. external - only other contracts and accounts can call

contract Base {
    // Private function can only be called
    // - inside this contract
    // Contracts that inherit this contract cannot call this function.
    function privateFunc() private pure returns(string memory){
        return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory){
        return privateFunc();
    }

    // Internal function can be called
    // - inside this contract
    // - inside contracts that inherit this contract
    function internalFunc() internal pure returns(string memory){
        return "internal function called";
    }

    function testinternalFunc() public pure returns(string memory){
        return internalFunc();
    }

    // Public functions can be called
    // - inside this contract 
    // - inside contracts that inherit this contract
    // - by other contracts and accounts

    function publicFunc() public pure returns( string memory){
        return "public function called";
    }

    // External functions can only be called
    // - by other contracts and accounts

    function externalFunc() external pure returns( string memory){
        return "external function called";
    }
    // This function will not compile since we're trying to call.
    // an external function here.
    // function testExternalFunc() public pure returns (string memory) {
    //    return externalFunc();
    //}

    // State variables
    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar = "my public variable";
    // string external externalVar = "my external variable";
    // State variable cannot be external so this code won't compile.

}

contract Child is Base{
    //Internal function call be called inside child contracts.
    function testInternalFunc() public pure returns(string memory){
        return internalFunc();
    }
}