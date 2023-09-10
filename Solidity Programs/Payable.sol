// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

contract Payable {
   // payable address can receive Ether    
   address payable public owner;

   //payable constructor can receive Ether
   constructor() payable {
       owner = payable(msg.sender);
   }

   // Funnction to deposite Ether into this contract
   // Call this function along with some Ether.
   // The balance of this conteract will be automatically updated.

   function deposite() public payable{}

   // Call this function along with same Ether.
   // The function will throw an error since this function is not payable
   function notPayable() public {}
   
   // Function to withdraw all Ether from this contract.
   function withdraw() public {
       // get the ammount of Ether stored in this contract
       uint amount = address(this).balance;

       // send all Eher to owner
       // Owner can receive Ether since the address of owncer is payable
       (bool success, ) = owner.call{value:amount}("");
       require(success, "Faild to send Ether");
   }

   // function to transfer Ether transfer Ether from this contract to address from input
   function transfer(address payable _to, uint _amount) public{
       // Note that "to" is declared as payable
       (bool success, ) = _to.call{value: _amount}("");
       require(success, "Failed to send Ether");
   }

}