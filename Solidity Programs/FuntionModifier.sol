// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Solidity- Function Modifier
//-- Modifier are code that can be run before and after the function call
//-- Generally use for 3 reasons
//--- Restrict access, validate inputs, Guard against reentrancy hack

contract Modifier{
   address public owner;
   uint256 public x = 23;
   bool public locked;

   constructor(){
       owner = msg.sender;
   }

   modifier onlyOwner(){
       require(msg.sender == owner, "Not Owner");
       _;
   }

   modifier validateData(address _addr){
       require(_addr != address(0), "Not valid address");
       _;
   }
   function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
       owner = _newOwner;
   }

   modifier noReentrancy(){
       require(!locked, "No reentrancy");
       locked = true;
       _;
       locked = false;
   }

   function decrement(uint256 _x) public noReentrancy{
       x -= 1;
       if(_x > 1){
           decrement(_x - 1);
       }
   }
}