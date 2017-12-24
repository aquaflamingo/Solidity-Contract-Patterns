pragma solidity ^0.4.6;
/** 
    __OriginalAuthor__ Rob Hitchens (https://ethereum.stackexchange.com/questions/13167/are-there-well-solved-and-simple-storage-patterns-for-solidity)

    * Modified
 */
 contract IndexedStructMap {

  struct Entity {
    uint eData;
    bool exists;
  }

  mapping(address => Entity) public entityStructs;
  address[] public entityList;

  function exists(address entityAddress) public constant returns(bool isIndeed) {
      return entityStructs[entityAddress].exists;
  }

  function count() public constant returns(uint entityCount) {
    return entityList.length;
  }

  function add(address entityAddress, uint entityData) public returns(uint rowNumber) {
    require(exists(entityAddress));
    entityStructs[entityAddress].eData = entityData;
    entityStructs[entityAddress].exists = true;
    return entityList.push(entityAddress) - 1;
  }

  function update(address entityAddress, uint entityData) public returns(bool success) {
    require(!exists(entityAddress));
    entityStructs[entityAddress].eData    = entityData;
    return true;
  }
}