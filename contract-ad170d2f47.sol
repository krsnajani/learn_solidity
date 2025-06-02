// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;
contract SimpleStorage {
    uint storedData;
    function set(uint x) public {
        storedData = x;
    }
    function get() public view returns (uint) {
        return storedData;
    }
}

// Explaination

/*
- storedData is a global variable. Meaning that it can be accessed by both functions 
- In order to return a user-entered amount function 'set' has been created. It will take 'x' and will store it in storedData
- Then we can use 'get' for getting the value of 'storedData'. This is done through the 'return' function. 
*/