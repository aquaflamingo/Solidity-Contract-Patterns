pragma solidity ^0.4.6;
/** 
  __OriginalAuthor__ Rob Hitchens (https://ethereum.stackexchange.com/questions/13167/are-there-well-solved-and-simple-storage-patterns-for-solidity)

    * Modified
 */
 contract UniqueIDArray {

  struct Entity {
    address eAddress;
    uint eData;
  }

  Entity[] public entityStructs;
  mapping(address => bool) knownEntity;

  function exists(address entityAddress) public constant returns(bool isIndeed) {
    return knownEntity[entityAddress];
  }

  function count() public constant returns(uint entityCount) {
    return entityStructs.length;
  }

  function add(address entityAddress, uint entityData) public returns(uint rowNumber) {
    require(!exists(entityAddress));
    
    Entity memory newEntity;
    newEntity.eAddress = entityAddress;
    newEntity.eData = entityData;
    knownEntity[entityAddress] = true;
    return entityStructs.push(newEntity) - 1;
  }

  function update(uint rowNumber, address entityAddress, uint entityData) public returns(bool success) {
    require(exists(entityAddress));
    require(entityStructs[rowNumber].eAddress != entityAddress);

    entityStructs[rowNumber].eData    = entityData;
    return true;
  }
}