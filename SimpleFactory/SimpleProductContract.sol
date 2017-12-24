pragma solidity ^0.4.6;

/**
    Basic Contract to deploy via Factory
    
    __Author__ = Robert Simoes
    __Date__ = Decemeber 23rd 2017

 */
contract SimpleProductContract {

    uint public factoryID;
    address public owner;

    modifier onlyOwner {
        if (msg.sender != owner) 
            revert();
        _;
    }

    function getFactoryID() returns (uint) {
        return factoryID;
    }

    function SimpleProductContract(uint _id, address _owner) {
        factoryID = _id;
        owner = _owner;
    }
}