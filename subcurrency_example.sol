// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.4.16 <0.9.0;

contract Coin {
    address public minter;
    // The word address refers to a 20 byte value which is used to store an Ethereum address.
    // The word public is used to declare a variable as public, which means it can be accessed from outside the contract.
    mapping(address => uint) public balances;
    // Understand this basically as a dictionary. The variable will be understood as having a key-value pair, where the key is an address and the value is a uint.
    event Sent(address from, address to, uint amount);
    // The event is basically a message that is sent to the blockchain when a certain condition is met. It is used to notify other contracts or users of a certain event.
}
