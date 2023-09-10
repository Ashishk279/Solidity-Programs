// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

contract StateVariabkes{
    // Few Think To Keep In Mind About State Variables

    string public myState;
    uint public myNum;

    // string public defaultText = "Hey Default Text";
    // uint256 public defaultNum = 8;

    // bytes public defaultBytes = "Hey Ashish";
    // bytes public defaultBytesNo;

    // uint256[] myNumber;
    // uint256[] public myNumber;

    // Update state variables by constructor
    // constructor(string memory _text, uint  _no) {
    //     myState = _text;
    //     myNum = _no;

    // }

    // Update state variables by function
    function update(string memory _text, uint _no)public{
           myState = _text;
           myNum = _no;
    }

}