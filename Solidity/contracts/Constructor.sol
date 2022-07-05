// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyConstructor{
    string public name;
    constructor (string memory _name){
        name = _name;
    }
}

contract MySecondConstructor is MyConstructor{
    constructor (string memory _name) MyConstructor(_name){}
}