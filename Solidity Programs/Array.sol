// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21; 

// Array

contract Array{
    // Several ways to initialize an arrray
    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizedArr;

    function get(uint i) public view returns(uint){
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should he avoided for arrays that can grow independentaly in length.

    function getArr() public view returns(uint[] memory){
        return arr;
    }

    function push(uint i) public{
        //Append to array
        //This will increase the array length by 1.
        arr.push(i);
    }
    
    function pop() public{
        // Remove last element fron array
        // This will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns(uint){
        return arr.length;
    }

    function remove(uint index) public{
        // Delete does not change the array length 
        // It reset the value at index to it's default value,
        // in this case 0
        delete arr[index];
    }

    function examples() external{
        // Create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }


}
