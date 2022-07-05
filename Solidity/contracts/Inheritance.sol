// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyInheritance_A{
    
    string internal name = "ihtishamSudo";

}

contract MyInheritance_B is MyInheritance_A{
    function getName() public view returns (string memory){
        return name;
    }

}

contract MyInheritance_C is MyInheritance_B{
    

}