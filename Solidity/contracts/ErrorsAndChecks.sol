// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ErrorsAndChecks{
    uint256 public maxAmount = 100;

    function updateMax() public{
        maxAmount = 50;
    }
    function myFunc(uint256 _x, uint256 _y) public view returns (uint256 xy){
        require (_x < _y, "X is greater than Y");
        checkMax();
        return _x + _y;
    }
    function myRevertFunc(uint256 _x, uint256 _y) public pure returns(uint256 xy){
        if(_x==10){
            revert("X is 10");
        }
        return _x + _y;
    }
    function checkMax() internal view {
        assert(maxAmount == 100);
    }
}