// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// For Loop
contract ForLoop{ 
    // Syntax
    // for(initialization, test condition, iteration statement){
    //     statement or block of code to be executed
    // }

    uint256[] data;

    function loop() public returns(uint256[] memory){
        for(uint256 i = 0; i < 6; i++){
            data.push(i);
        }
        return data;
    }
}