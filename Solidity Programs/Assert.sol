// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Solidity- Assert Error Handling

contract AssertStatement{
     bool result;
     function checkOverFlow(uint256 _num1, uint256 _num2)public{
          uint256 sum = _num1 + _num2;
          assert(sum <= 255);
          // In assert there is only condition but no message but in case of require message also.
          result = true;
     }

     function getResult() public view returns(string memory){
         if(result == true){
             return "No Overflow";
         }
         else{
             return "Overflow Exist";
         }
     }
}