// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

//PURE : When we use the pure keyword we only accessing the local variables not state variable.
//       For accessing state variable we need view keyword.
contract Pure{
    uint256 num1 = 2;
    uint256 num2 = 32;

    function getData() public pure returns(uint256 , uint256){
        uint256 muNum1 = 34;
        uint256 muNum2 = 32;

        uint256 product = muNum1 * muNum2;
        uint256 total = muNum2 + muNum1;
        return (product, total);
    }

}
