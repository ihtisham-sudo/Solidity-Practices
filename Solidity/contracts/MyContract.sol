// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract{
    string public user = "Ihtisham-sudo";

    function updateUser(string memory _newUser) public {
        user = _newUser;
    }
}