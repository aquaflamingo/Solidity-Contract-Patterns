/*
* Original Author: https://github.com/cjgdev
* Modified
*/

pragma solidity ^0.4.6;
contract SpeedBump {
  function SpeedBump() {
    allowedTime = 0;
  }
  modifier setSpeedBumpsEvery(uint t) {
      if (now >= allowedTime) { 
        _;
        allowedTime = now + t;
      }
  }
  function setAllowedTime(uint t) {
    allowedTime = now + t;
  }
  uint allowedTime;
}
