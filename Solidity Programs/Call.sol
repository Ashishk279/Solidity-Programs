// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

contract Receiver {
    event Received(address caller, uint amount, string message);
    fallback() external payable{
        emit Received(msg.sender, msg.value, "Fallback was called");
    }

    function foo(string memory _message, uint _x) public payable returns(uint){
        emit Received(msg.sender, msg.value, _message);
        return _x + 1;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    // Let's imagine the contract Caller does not have the source code for the 
    // contract REceiver, but we do know the address of contract Receiver and the
    // to call.

    function testCallFoo(address payable _addr) public payable{
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) = _addr.call{value:msg.value, gas: 5000}(
        abi.encodeWithSignature("foo(string, uint256)", "call foo", 123)
        );

        emit Response(success, data);
    }

    // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address _addr) public {
        (bool success, bytes memory data) = _addr.call(abi.encodeWithSignature("doesNotExist()"));

        emit Response(success, data);
    }
}