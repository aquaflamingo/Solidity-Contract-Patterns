/*
* Original Author: https://github.com/cjgdev
* Modified
*/

pragma solidity ^0.4.6;

contract Deprecatable {
  function Deprecatable(uint t) {
    expires = now + t;
  }
  function expired() returns (bool) {
    return now > expires ? true : false;
  }
  modifier willDeprecate() {
    _;
    // When 
  }
  modifier whenDeprecated() {
      if (expired()) {_;}
  }
  uint expires;
}
