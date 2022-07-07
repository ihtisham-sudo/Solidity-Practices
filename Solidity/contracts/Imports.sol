// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "./Events.sol";


contract NFT{
    uint256 dna;
    string name;

    constructor(string memory _name, uint256 _dna){
        name = _name;
        dna = _dna;
    }
}



contract MyImport is ERC721{
    NFT[] public nfts;
    string MyName = "Ihtsham";
    bytes32 myBytesName = "Ullah";
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){}

    function addNFT(string memory _name, uint256 _dna)public{
        NFT nft = new NFT(_name, _dna);
        nfts.push(nft);
    }
    function myHashedName(string memory _name) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_name));
    }
}