# Buying.com Ethereum Smart Contracts

This project is in TypeScript and uses Hardhat. It contains and ERC20 token and a minimal swapper contract that can be used to bridge the tokens from Ethereum to Algorand.  
It also comes with a sample contract (Lock), a test for that contract, and a script that deploys that contract.

## Installation
```shell
yarn
```

## Usage
To compile the contract after making changes, do the following
```shell
npx hardhat clean
npx hardhat compile
```
This will generate new builds and typings.  

### Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.ts
```
