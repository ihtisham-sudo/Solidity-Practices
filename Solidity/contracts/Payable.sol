// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyPayable{

    address payable public myaddress;

    constructor() payable{
        myaddress = payable(msg.sender);
    }
    function deposit() public payable{}

    function getThisAccountBalance() public view returns(uint256){
            uint amount = address(this).balance;
            return amount;
            
    }

}