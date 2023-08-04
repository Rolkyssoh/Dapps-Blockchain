//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 < 0.9.0;

//They can not inherit from other smart contracts
//They can not inherit from other interfaces

//They can not declare a constractor
//They can not declare a state variable
//All declared functions have to be external

interface IFaucet {
    function addFunds() external payable;
    function withdraw(uint withdrawAmount) external;
}