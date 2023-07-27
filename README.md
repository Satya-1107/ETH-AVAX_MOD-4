# ETH-AVAX_MOD-4
# Deploying Degan Gaming ERC-20 Token

This is a smart contract for the Degen Gaming ERC20 token deployed on the Avalanche network. The contract provides functionality for minting new tokens, transferring tokens, redeeming tokens for in-game items, checking token balances, and burning tokens.

## Contract Details
1. Token Name- Degan Token
2. Token Symbol-DGN
   
## Proceeding project
## Executing program

## 1. Minting Tokens

The contract creator (contract deployer) can mint new tokens by calling the mint function, specifying the recipient address and the amount of tokens to be minted. Only the contract owner can perform this action.

## 2. Transferring Tokens

Users can transfer tokens to other addresses using the standard ERC-20 transfer function. This functionality is inherited from the OpenZeppelin ERC20 implementation.

## 3. Transferring Tokens on Behalf of Users

Users can approve the contract to spend a certain amount of tokens on their behalf, and then the contract can transfer tokens from their account to another address using the transferFrom function. This functionality is also inherited from the OpenZeppelin ERC20 implementation.

## 4. Approving Token Spending

Users can approve other addresses to spend a certain amount of their tokens using the approve function. This is typically used in combination with the transferFrom function for delegated token transfers.

## 5. Medical Store Items

The contract has a function medicalstoreitems that provides information about the items available for purchase in the medical store. It logs the available items in the console and returns a string listing the items.

## 6. Redeeming Tokens for Medical Store Items

Users can redeem their tokens for medical store items by calling the reedemTokens function with a _userSelection parameter. Depending on the selection, the user's tokens are transferred to the contract owner's address. The contract checks if the user has enough tokens to perform the redemption.

## 7. Burning Tokens

Users can burn (destroy) a certain amount of their tokens by calling the burn function, which reduces the total supply of tokens. This function is useful for token holders who want to permanently remove tokens from circulation.

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
 

   
