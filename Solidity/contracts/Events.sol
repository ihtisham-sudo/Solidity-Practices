// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract myEvents {
    event CreatedNFT(address indexed user, uint256 id, uint256 dna);

    function CreatedNft(uint256 _id, uint256 _dna) public{
        // create the NFT and save to storage
        emit CreatedNFT(msg.sender, _id, _dna);
    }
}