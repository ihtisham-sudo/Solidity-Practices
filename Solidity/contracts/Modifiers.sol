// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract MyModifier{
    uint256 public myNum = 0;
    bool public paused = false;
    address public owner;

    constructor (){
        owner = address(msg.sender);
    }
    modifier isNotPaused (){
        require(paused == false, "Contract is paused");
        _;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "Not the Owner");
        _;
    }

    function setPause()public{
        paused = true;
    }
    function addToNum() public isNotPaused onlyOwner{
        myNum++;
    }
    function subToNum() public isNotPaused onlyOwner{
        myNum--;
    }
}