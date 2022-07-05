// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyIfElse{
    uint public RevealState = 0;
    bool public isNowRevealed = false;
    string public status = "Not yet revealed";
    function addToRevealState() public {
        RevealState++;
        
    }
    function IsReveal() public{
        if (RevealState >= 10){
            isNowRevealed = true;
            status = "Is Now Revealed";
        }
        else{
            status = "Still not Revealed";
        }
    }


}