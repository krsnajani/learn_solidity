
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    // Lets the address recieve crypto
    enum RoomStatus { 
        BOOKED, 
        UNBOOKED 
    }
    
    RoomStatus public currentStatus;
    
    address payable public owner;

    event Occupy(address _occupant, uint _days, uint _value);

    constructor() {
        owner = payable(msg.sender);
        currentStatus = RoomStatus.UNBOOKED;
    }

    modifier isVacant {
        require(currentStatus == RoomStatus.UNBOOKED, "Currently Occupied");
        _;
    }

    modifier priceValue(uint _amount) {
        require(msg.value == _amount, "The price of the room is 2eth. Please try again");
        _;
    }

    function book() public payable isVacant priceValue(2 ether){
        // check price value
        // check status
        currentStatus = RoomStatus.BOOKED;
        owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{
            value: msg.value
        } ("");
        require(true);
        emit Occupy(msg.sender, 0, msg.value);

        // sends crypto to the reciepient which here is the owner. the sender is the one who calls the book function

    }
}