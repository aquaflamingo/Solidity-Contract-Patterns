pragma solidity ^0.4.6;

/** 
    __OriginalAuthor__ Rob Hitchens (https://ethereum.stackexchange.com/questions/13167/are-there-well-solved-and-simple-storage-patterns-for-solidity)

    * Modified
 */
contract SimpleList {

  struct Entity {
    address eAddress;
    uint eData;
  }

  Entity[] public entityStructs;

  function add(address entityAddress, uint entityData) public returns(uint rowNumber) {
    Entity memory newEntity;
    newEntity.eAddress = entityAddress;
    newEntity.eData    = entityData;
    return entityStructs.push(newEntity)-1;
  }

  function count() public constant returns(uint entityCount) {
    return entityStructs.length;
  }
}

