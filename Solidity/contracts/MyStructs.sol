// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyStruct{
    struct NFT{
        string name;
        uint256 dna;
    }

    NFT[] public nftlist;
    function addNFT(string memory _name, uint256 _dna)public{
        NFT memory newNFT = NFT(_name, _dna);
        nftlist.push(newNFT);
    }
    function updateNFT(uint256 _index, string memory _name) public{
        
    }
    function getNftName(uint256 _index) public view returns(string memory){
        return nftlist[_index].name;
    }
}