// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Function:
contract Function{
    // Functions can returns multiple values.
    function returnsMany() public pure returns(uint, bool, uint){
        return (1, true, 3);
    }

    // Returns values can be named.
    function named() public pure returns(uint x, bool y, uint z){
        return (1, true , 4);
    }

    // Return values can be assigned to their name.
    // In this case the returns statement can be omitted.

    function assigned() public pure returns(uint x, bool b, uint y){
        x = 2;
        b = true;
        y = 5;
        
    }

    // Use destructuring assignment when calling another
    // function that a returns multiple values.

    function destructuringAssignment() public pure returns(uint, bool, uint, uint, uint){
        (uint i, bool b, uint j) = returnsMany();

        // Values can be left out.
        (uint x , , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // Cannot use map for either input or output
    // Can use array for input

    function arrayInput(uint[] memory _arr) public {

    }

    // function only work array not with mapping
    uint[] public arr;
    function arrayOutput() public view returns(uint[] memory){
        return arr;
    }



}

 // Call function with key-value inputs
contract XYZ {
    function someFunctionManyInputs(uint x, uint y, uint z, address a, bool b, string memory c) public pure returns(uint){
        
    }
    function callFunc() external pure returns(uint){
        return someFunctionManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns(uint){
        return someFunctionManyInputs({a: address(0), b: true, c: "c", x: 1, y: 2, z: 3});
    }
}