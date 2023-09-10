// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Constants{
    // 70063 gas- execution fee without constant
    // address public myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // 45697 gas- execution fee with constant
    address public constant myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // 58309 gas
    function getConstant() public pure returns(address){
        return myAddr;
    }

}