// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Delegatecall - is a low level function and that function is similar to call which we used to 
// transfer the funcd from one account to another account.

// NOTE: Deploy this contract first
contract B {
    // NOTE: storage layout must be the same as contract A
    uint public num;
    address public sender;
    uint public value;

    function setVar(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }

}

contract A {
    uint public num;
    address public sender;
    uint public value;

    function setVar(address _contract, uint _num) public payable {
        // A's storage to set, B is not modoified.
        (bool success, bytes memory data) = _contract.delegatecall(abi.encodeWithSignature("setVar(uint256)", _num));
    }
}