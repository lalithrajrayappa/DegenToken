// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    string public degen_igstore;
    string public double_mint_rules;
    

    constructor() ERC20("Degen", "DGN") {
        degen_igstore = "The Official Degen store has the following redeemable items: 1. Degen Lamp 2. Degen Toy 3. Degen Console ";
        double_mint_rules = "You can double mint only if you have 500-1000 tokens";     
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 burn_amt) public override {
        require(balanceOf(msg.sender) >= burn_amt, "Insufficient Balance");
        _burn(msg.sender, burn_amt);
    }

    function redeem(uint256 redeem_value,bool store_check) public  {
        require(store_check==true,"Make sure you have read the item lists available in our ig store");
        if (balanceOf(msg.sender) < 1000) {
            revert("Insufficient Balance");
        }
        assert(redeem_value > 0 && redeem_value < 4);
        _burn(msg.sender, redeem_value * 250);
       
    }

    function doublemint(uint256 amount) public  {
        require(
            balanceOf(msg.sender) >= 500 && balanceOf(msg.sender) <= 1000,
            "Please read rules to double mint"
        );
        _mint(msg.sender, amount * 2);
        
    }
}
