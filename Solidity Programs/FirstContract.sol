// SPDX-License-Identifier:MIT

//NOTES:
//--- One think you have to keep in mind while writing solidity smart contract compiler version 
//--- must be greater than 0.8.13 and less than 0.8.21
pragma solidity >=0.8.13 <0.8.21;

contract MyFirstContract{
    // string  public hey = "Hey Ashish";
    // uint256 public no = 8;

    string  public hey;
    uint256 public no;

    // constructor(string memory _hey, uint256 _no){
    //     hey = _hey;
    //     no = _no;
    // }

    function addInfo(string memory _hey, uint256 _no)public{
        hey = _hey;
        no = _no;
    }
}