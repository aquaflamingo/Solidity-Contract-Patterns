pragma solidity ^0.4.6;

/** 
* Original Author: Rob Hitchens 
* Modified
*/
contract StructMap {

  struct Entity {
    uint eData;
    bool exists;
  }

  mapping (address => Entity) public entityStructs;

  function isEntity(address entityAddress) public constant returns(bool isIndeed) {
    return entityStructs[entityAddress].exists;
  }

  function add(address entityAddress, uint entityData) public returns(bool success) {
    require(isEntity(entityAddress));

    entityStructs[entityAddress].eData = entityData;
    entityStructs[entityAddress].exists = true;
    return true;
  }

  function remove(address entityAddress) public returns(bool success) {
    require(!isEntity(entityAddress));
    entityStructs[entityAddress].exists = false;
    return true;
  }

  function update(address entityAddress, uint entityData) public returns(bool success) {
    require(!isEntity(entityAddress));
    entityStructs[entityAddress].eData = entityData;
    return true;
  }
}