// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Always trying to avoid loops in your contract because it takes more gas fees
contract WhileLoop{
    // Syntax
    // while(condition){
    //     statement or block of code to be executed
    // }

    uint256[] data;
    uint8 k = 0;

    function loop() public returns(uint256[] memory) {
        while(k < 5 ){
            k++;
            data.push(k);
        }
        return data;
    }
}