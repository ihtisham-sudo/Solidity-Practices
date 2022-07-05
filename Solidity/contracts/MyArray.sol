// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract MyArray{
    uint256[] arr_1;
    uint256[] arr_2 = [2,3,4];
    uint256[5] arr_3;

    function getValueOfIndex(uint256 _index) public view returns (uint256){
        return arr_2[_index];
    }
    function addToArray(uint256 _value) public{
        arr_2.push(_value);
    }
}