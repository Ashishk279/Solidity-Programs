// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21; 

// Mapping
// Syntax: mapping(keyType => valueType)

contract Mapping{
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns(uint){
        // Mapping always return the value
        // If the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public{
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset the value to the default value.
        delete myMap[_addr];
    }

}

contract NestedMapping{
    // Nested mapping (mapping from address to another mapping).

    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns(bool){
        // You can get avlue from a nested mapping
        // even it is not initialized
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _bool) public{
        nested[_addr1][_i] = _bool;
    }

    function remove(address _addr1, uint _i) public{
        delete nested[_addr1][_i];
    }
}