// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IsEven {
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    uint[] public evenNums;
    uint public Cvene;

    function isEven(
        uint _number
    )
    public view
    returns (bool) {
        if(_number % 2 == 0) {
            return true;
        } else {return false;}
    }

   function addValue(uint _value) public {
        numbers.push(_value);
        // memory here is a temporary storage location for the string parameter _value.
    }
    

    function countEven()
    public
    returns (uint) {
        uint CountEven = 0;
        for(uint i = 0; i < numbers.length; i++) {
            if(isEven(numbers[i]) == true) {
                CountEven++;
                evenNums.push(numbers[i]);
            }
        }
        Cvene = CountEven;
    }

    function showCountEven() public returns(uint[] memory) {
        return evenNums;
    }

}