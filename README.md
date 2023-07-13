# ETH-AVAX_MOD-4
# Deploying Degan Gaming ERC-20 Token

This is a smart contract for the Degen Gaming ERC20 token deployed on the Avalanche network. The contract provides functionality for minting new tokens, transferring tokens, redeeming tokens for in-game items, checking token balances, and burning tokens.

## Contract Details
1. Token Name- Degan Token
2. Token Symbol-DGN
   
## Proceeding project
## Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., DegenToken.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

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

    function transferFrom(address _from, address recipient, uint256 amount) public override returns (bool) {
        _transfer(_from, recipient, amount);
        _approve(from, msg.sender, allowance(from, msg.sender) - amount);
        return true;
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function redeem(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function checkBalance(address account) external view returns (uint256) {
        return balanceOf(account);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

## Deployment

The contract has been deployed on the Avalanche network for Degen Gaming.

For the deployment on your own pc follow the steps:

1)First write the contract on the remix.

2)Add a network account on Metamask.

3)Make sure that the required avax is present in your account.

4)When the metamask has enough avax then select the environment as "Injected Provider" in remix.

5)So finally at the last step deploy it.

6)To verify copy the address of deployment and paste it into "Snowtrace Fauji".

## Authors
SATYA PRAKASH

## License
This project is licensed under the MIT License.
 

   
