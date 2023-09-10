// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Solidity- Error Handling
//--------require statement

contract Require{

    function checkInput(uint256 _input) public pure returns(string memory){
        require(_input >= 0, "Invalid uint8");
        require(_input <= 255, "Invalid uint8");

        return "Input in uint8";
    }

    function odd(uint256 _input) public pure returns(bool){
        require(_input % 2 != 0);
        return true;
    }
}