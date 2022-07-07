// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyOtherContract{
    uint256 public age = 26;
    function getAge() public view returns(uint256){
        return age;
    }
}

contract MyContractCall{
    function getAgeFromOtherContract(address _contactAddress) public view returns(uint256){
        MyOtherContract other = MyOtherContract(_contactAddress);
        uint256 age = other.getAge();
        return age;
    }
}