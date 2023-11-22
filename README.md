# Degen Token Game with a Degen Store

This is my fourth module Eth+Avax submission. I have created a DeFi game which has a Degen store and deployed it to Avalanche.

## Description

In this module submission, I have created a smart contract which has all the ERC20 functionalities and an additional redeem function so that the items in the Degen store can be redeemed in exchange for tokens and a double mint function which mints double the amount entered if the balance is between 500-1000 tokens. For every item you redeem, the item number * 250 tokens get burnt /deducted from the total supply.

## Getting Started

### Installing

* Download the project (ZIP file) or clone the repository locally.

* You can open this project on gitpod too by forking the repo.

* Create a .env file in the project root directory with snowtrace API key and your wallet private key.

### Executing program

* You have to first install this project repo.
  
* Then, you need to compile your contract to check if there's no error in your contract
```
npx hardhat compile
```
* Then, you need to deploy this contract to avalanche fuji testnet by running the below command:
```
npx hardhat run scripts/deploy.js --network fuji
```

* Then, you need to verify the contract by running the below command:
```
npx hardhat verify <contract address> --network fuji
```
## Help

Since the main faucet is not working at the moment, you can use alternate chainlink faucet to get test Avax tokens to carry out avalanche fuji transactions. The link for the same is - https://faucets.chain.link/fuji

## Authors

Lalith Raj 

[@lalithrajrayappa@gmail.com]

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
