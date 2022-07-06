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
    function transferETH(address payable _user) public payable{
        _user.transfer(msg.value);
    }
    function sendETH(address payable _user) public payable{
        bool didsend = _user.send(msg.value);
        require(didsend, "This failed to send");
    }
    function callETH(address payable _user) public payable{
        (bool didsend, ) = _user.call{value:msg.value}("");
        require(didsend, "This is failed");
    }

    receive() external payable{}
    fallback() external payable{}
    
}