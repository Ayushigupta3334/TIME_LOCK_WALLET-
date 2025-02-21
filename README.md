# Time-Locked Wallet

## Description
The Time-Locked Wallet is a smart contract implemented in Solidity that securely locks funds until a specified date. This prevents withdrawals before the lock period expires, ensuring delayed access to the funds.

## Features
- **Time Lock Mechanism**: Funds are locked until a predefined unlock time.
- **Owner-Only Withdrawals**: Only the contract owner can withdraw funds after the lock period.
- **Deposits**: Any user can deposit Ether into the contract.
- **Event Logging**: Emits events for deposits and withdrawals.
- **No Constructor Required**: Simplified deployment with predefined owner and lock time.

## Contract Overview
- The contract is deployed with a default lock period of **1 week**.
- The `deposit` function allows users to add funds to the contract.
- The `withdraw` function enables the owner to withdraw funds only after the unlock time has passed.
- Uses Solidity **version 0.8.20** and follows **MIT license** standards.

## Deployment Address
This contract has been deployed on the **Edu Chain** at the following address:
```
0x0c8b4Ba1518A2873D8404224021D90fCf819C4Fa
```

## Functions
### `deposit()`
Allows anyone to deposit Ether into the contract.
- Emits a `Deposited` event.

### `withdraw()`
Allows the owner to withdraw funds after the unlock period.
- Emits a `Withdrawn` event.
- Ensures the owner is the only one who can withdraw funds.

## Deployment
No constructor is used, and no additional inputs are required at deployment. The default owner is the deployer, and the unlock time is set to 1 week from the deployment timestamp.

## License
This project is licensed under the MIT License.


