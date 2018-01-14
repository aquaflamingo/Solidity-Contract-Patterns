/*
* Original Author: https://github.com/cjgdev
* Modified
*/

pragma solidity ^0.4.6;
contract Ownable {
  function Ownable() {
    owner = msg.sender;
  }
  modifier only_owner() {
    if(msg.sender == owner) _;
  }

  address owner;
}
