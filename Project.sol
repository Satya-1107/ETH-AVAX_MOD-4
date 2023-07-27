// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("Degen", "DGN") {}

    function mint(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    function transferFrom(address from, address recipient, uint256 amount) public override returns (bool) {
        _transfer(from, recipient, amount);
        _approve(from, msg.sender, allowance(from, msg.sender) - amount);
        return true;
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function medicalstoreitems() external view returns (string memory) {
        console.log("The below items present in store for purchase:");
        console.log("Item 1-medicine");
        console.log("Item 2-bandage");
        console.log("Item 3-injection");
        return "The below items present in store for purchase:\nItems 1-medicine,2-bandage,3-injection";
    }

    function reedemTokens(uint8 _userSelection) external payable returns (bool) {
        if (_userSelection == 1) {
            require(this.balanceOf(msg.sender) >= 75,"You do not have enough Degan");
            approve(msg.sender, 75);
            transferFrom(msg.sender, owner(), 75);
            console.log("you have successfully redeemed for medicine");
            return true;
        }
        else if (_userSelection == 2) {
            require(this.balanceOf(msg.sender) >= 50,"You do not have enough Degan");
            approve(msg.sender, 50);
            transferFrom(msg.sender, owner(), 50);
            console.log("you have successfully redeemed for bandage");
            return true;
        }
        else if (_userSelection == 3) {
            require(this.balanceOf(msg.sender) >= 25,"You do not have enough Degan");
            approve(msg.sender, 25);
            transferFrom(msg.sender, owner(), 25);
            console.log("you have successfully redeemed for injection");
            return true;
    }
    else {
        console.log("That is not a valid choice");
        return false;
    }
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
