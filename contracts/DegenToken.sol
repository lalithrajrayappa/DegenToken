// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    
    string public shop_items;
    
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender) {
        shop_items="These items are available to be redeemed: 1. shoes 2. laptop 3. mobile ";
    }

    function mint(address to_address, uint256 amt) public onlyOwner {
        _mint(to_address, amt);
        
    }


    function redeem(uint256 product_no) public{
        
        if (balanceOf(msg.sender)< 2000){
            revert("Minimum balance required to redeem is 2000");
        }
        assert(product_no>0 && product_no<3);
        _burn(msg.sender, product_no*2000);
       
    }
}
