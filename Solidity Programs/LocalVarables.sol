// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

contract LocaLVariables{

    uint256 public myNumber;

    // Function for Local Variables

    function local() public pure returns(uint256){
        // Variables define inside the function scope
        //-- Not store on the blockchain

        uint256 i = 3453;
        return i;

    }
}