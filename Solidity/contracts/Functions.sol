// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyFunction{
    uint256 myUint = 42;
    string myString = "Ihtsham";
    bool myBool = true;
    uint256[] myArr = [3,3,3];
    function myPureFunc(uint256 _x, uint256 _y) public pure returns (uint256 xy){
        return _x + _y;    
    }
    function myViewFunc()internal view returns (string memory){
        return myString;
    }
    function myUpdateFunc() public returns (string memory){
        myString = "Ullah";
        string memory savedString = myViewFunc();
        return savedString;
    }
    function myReturnFunc() external view returns(uint256, string memory, bool,uint256[] memory){
        return(myUint,myString,myBool,myArr);
    }
    function myNoReturnFunc()external{
        myBool = false;
    }
}