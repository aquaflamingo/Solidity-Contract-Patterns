pragma solidity ^0.4.6;

/**
    Simple factory contract to create and manage a set of contracts.

    __Author__ Robert Simoes
    __Date__ December 23rd 2017
 */

import './SimpleProductContract.sol';

contract SimpleContractFactory {
    address public owner;
    address[] contracts;


    function SimpleContractFactory() {
        owner = msg.sender;
    }
    
    event NewContractAddress (address contractAddress, uint _id, address contractCreator);


    function count() public constant returns (uint count) { 
        return contracts.length;
    }

    function create() external {
        uint factoryID = contracts.length;
        address newContract = new SimpleProductContract(factoryID, msg.sender);
        contracts.push(newContract);
        NewContractAddress(newContract,factoryID,msg.sender);
    }
}