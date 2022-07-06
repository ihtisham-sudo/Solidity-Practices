// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface ICounter{
    function count() external view returns(uint256);
    function addToCount() external;
}

contract MyInterface is ICounter{

    uint256 counter = 0;
    function count() external view override returns(uint256){
        return counter;
    }
    function addToCount() external override{
        counter++;
    }
}