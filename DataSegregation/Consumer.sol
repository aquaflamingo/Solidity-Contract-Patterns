/*
* Original Author: https://github.com/cjgdev
* Modified
*/

pragma solidity ^0.4.6;
contract Consumer {
  address _data;
  function Consumer(address d) { _data = d; }
  function getData() returns (address) { return _data; }
}
