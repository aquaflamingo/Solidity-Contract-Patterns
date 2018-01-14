
/*
* Original Author: https://github.com/cjgdev
* Modified
*/

pragma solidity ^0.4.6;

import '../Ownership/Ownable.sol';

contract Relay is Ownable {
    address public currentAddress;
    function relay(address c) {
        currentAddress = c;
    }
    function update(address c) public only_owner() {
        currentAddress = c;
    }
}
