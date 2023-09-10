// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Send Ethe Methods
// transfer(2300 gas, throws erro)
// send(2300 gas, returns bool)
// call(forward all gas or set gas, returns bool)


contract RecieveEther{
    /*
    which function is called, fallback() or receive()?

         send Ether
             |
      msg.sender is empty?
            /  \
           yes  no
           /     \
receive() exists? fallback()
    */

    // Function to receive Ether masg.sender must be empty
    receive() external payable{}

    // Fallback function is called when msg.data is not empty
    fallback() external payable{}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

contract SendEther{
    function sendViaTransfer(address payable _to) public payable{
        // This function is no longer recommended for sending ether.
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable{
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sendering Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to  send Ether");

    }

    function sendViaCall(address payable _to) public payable{
        // Call returns a boolean value indicating success or failure.
        // This is the current recommenda=ed method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
        
    }
}
