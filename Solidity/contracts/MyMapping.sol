// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyMapping{

    mapping(uint256 => address) public nfts;
    uint256 counter = 0;

    function getOwnerNFTS(uint256 _id) public view returns (address){
        return nfts[_id];
    }
    function mintNFT(address _address) public{
        nfts[counter] = _address;
        counter++;
    }

}