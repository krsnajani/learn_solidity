pragma solidity ^0.8.0;

contract Learning {
    uint[] public Array = [1, 2, 3];
    string[] public sArray = ["one", "two", "three"];
    string[] public myArray;
    
    function addValue(string memory _value) public {
        myArray.push(_value);
        // memory here is a temporary storage location for the string parameter _value.
    }
    
    function valueCount() public view returns(uint) {
        return myArray.length;
    }
}