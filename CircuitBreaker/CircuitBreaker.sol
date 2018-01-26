/*
* Original Author: https://github.com/cjgdev
* Modified
*/

pragma solidity ^0.4.6;
import "../Ownership/Ownable.sol";

contract CircuitBreaker is Ownable {
  function CircuitBreaker() {
    stopped = false;
  }
  function toggleActive() only_owner public {
    stopped = !stopped;
  }
  
  modifier stop_if_emergency() {
    if (!stopped){_;}
  }
  modifier emergency_only() {
    if (stopped) {_;}
  }
  bool stopped;
}
