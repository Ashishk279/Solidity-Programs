// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Super Keyword is allow to inherit the parent contract.
/* Inheritance tree 
     A
    / \
   B   C
   \   /
     D
*/

contract A {
    // This is called an event. You can emit events from your function 
    // and they are logged into the transaction log.
    // I our case, this will be useful for tracing function calls.
    event log(string message);

    function foo() public virtual{
        emit log("A.foo called");
    }
     
    function bar() public virtual{
        emit log("A.bar called");

    }
}

contract B is A{
    function foo() public virtual override{
        emit log("B.foo called");
        A.foo();
    }
    function bar() public virtual override{
        emit log("B.bar called");
        super.bar();
    }
}

contract C is A{
    function foo() public virtual override{
        emit log("C.foo called");
        A.foo();
    }

    function bar() public virtual override{
        emit log("C.bar called");
        super.bar();
    }
}

contract D is B, C {
    // Try:
    // - Call D.foo and check the transaction logs.
    //   Although D inherits A, B and C, it only called C and then A.
    // - Call B.bar and check the transaction logs
    //   D called C, then B, and finally A.
    //   Although super was called twice (by B and C) it only called A once.

    function foo() public override(B, C){
        super.foo();
    }

    function bar() public override(B,C){
        super.bar();
    }
}


 