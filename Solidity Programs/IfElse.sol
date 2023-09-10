// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// If Else 
contract IfElse {
    uint256 public myNum = 4;
    string public myString;

    // function get(uint256 _num) public returns(string memory){
    //     if(_num == 5){
    //         myString = "Hey the value is 5";
    //     }
    //     else if(_num == 4){
    //         myString = "Not 5";
    //     }else{
    //         myString = "Hey Ashish";
    //     }
    // }

    // Function Using ternary operator
    function shortHand(uint256 _num) public returns(string memory){
        return _num == 5 ? myString = "Ashish" : myString = "Nobody";
    }
}