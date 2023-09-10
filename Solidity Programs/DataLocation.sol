// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

//There are Three different types of Data Locations:
// 1.Storage - data going to defined in the storage on the blockchain 
// 2.Memory - data going to store in the memory and that data exixt in the function
// 3.Calldata - data going to defined as a call data be an argument

contract DataLocation{
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct{
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        // Call _f with state variable
        _f(arr, map, myStructs[1]);

        //get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);

    }

    function _f(
        uint[] storage _arr,
        mapping (uint => address) storage _map,
        MyStruct storage _mystruct
    ) internal{
        //do something with storage variables

    }
    function g(uint[] memory _arr) public returns(uint[] memory){
        // do something with memory array
    }

    function h(uint[] calldata _arr) external{
        // do something with calldata array
    }

    

} 