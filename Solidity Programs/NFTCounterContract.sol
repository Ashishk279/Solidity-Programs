// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

contract NFTCounter{
    uint numberOfNFT;

    // Check Total no  of NFT
    function checkTotalNFT() public view returns(uint256){
        return numberOfNFT;
    }

    // This function will increment the NFT Number
    function addNFt() public{
        numberOfNFT += 1;
    }

    // This function will delete the NFT by 1
    function deleteNFT() public{
         numberOfNFT -= 1;
    }
}