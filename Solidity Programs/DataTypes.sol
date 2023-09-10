// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

//-- Solidity is a statically typed language, which implies that the type of each of the variable should be 
//-- specified. Data types allow the compiler to check the correct usage of the variables. The declared types
//-- have some default values called Zero-State.
//-- For Eg: for bool the default value is False. Likewise other dtatically typed languages Solidity has value 
//-- typed  and Reference types which are defined below

//-- Value Type DataTypes:
//-- Boolean    - integer    - Fixed Point Number
//-- Address    - Bytes and Strings    - Enums

//-- Reference Types
//-- Arrays     - Struct     - Mapping

contract DataTypes{
    bool public  hey;
    bool public no = true;

    // uint stands for unsigned interger, meaning no negative integers different size are available

    // uint8 // ranges 0 to 2**8 - 1  // 255
    // uint16 // ranges 0 to 2**16 - 1 // 65535
    // uint256 // ranges 0 to 2**256 - 1 // 1.1579208e+77

    uint8 public u8 = 1;
    uint public u256 = 564;
    uint public u = 243; // uint is an alias from uint256

    // Negative Number
    // Negative number are allowed for int types. Like uint, different ranges are available
    
    // uint256 ranges -2**256 to 2**256 - 1 // -1.1579208e+77 to 1.1579208e+77

    int8 public i8 = -1;
    int public i256 = 3432;
    int public i = -23221;

    // Now you can add min and max int

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //ARRAYS
    // Solidiy, the data types byte represent a sequence of bytes. So generally three types of array are used:

    //--- fixed-sized bytes arrays
    //--- dynamically-sized arrays

    //-- When you define byte, in smart contract it's represent dynamic bytes array

    // bytes1 public a;
    // bytes1 public b;

    bytes1 public a = 0x67;
    bytes1 public b = 0x78;

    // Address Types
    address public hey1;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Default values 
     bool public defaultBool; // false
     uint public defaultNumber; // 0
     int public defaultInt; // 0
     address public heyu; //0x00000000




}