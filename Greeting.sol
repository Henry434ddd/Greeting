// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.21 <0.9.0;

contract Greeting {

//Data Locations - Storage, Memory and Calldata
// Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
// storage - variable is a state variable (store on blockchain)
// memory - variable is in memory and it exists while a function is being called
// calldata - special data location that contains function arguments
    string public name;
    string public greetingPrefix = "Hello";

    constructor(string memory initialName) {
        name = initialName;
    }

    function setName(string memory newName) public {
        name = newName;
    }


    function getGreeting() public view returns (string memory) {
        return string(abi.encodePacked(greetingPrefix, name));
    }


}