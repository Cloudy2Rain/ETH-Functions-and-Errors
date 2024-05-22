# ETH-Functions-and-Errors(Ordering Contract)

The "Functions and Errors" Solidity program explains the fundamental syntax and features of the Solidity programming language. This program is meant to be a jumping off point for people who are unfamiliar with Solidity and want to get a sense of how it functions.

# Description

The 'Ordering' Contract is a simple smart contract designed for managing orders on the ethereum blockchain. It allows users to create and retrieve orders by storing each order's name with a unique ID, incrementing the order count with each new order.

# Getting Started

# Executing Program

Remix is an online Solidity IDE that may be used to run this software; to get started, visit the Remix website at https://remix.ethereum.org 

Click the "+" symbol in the left-hand sidebar to start a new file once you are on the Remix website. Save the file as Ordering.sol, for example, using the.sol extension. The code below should be copied and pasted into the file:



```javascript
pragma solidity ^0.8.0;

contract Ordering {
    uint public orderCount = 0;
    mapping(uint => string) public orders;
    }
}

```
Select the "Solidity Compiler" tab from the sidebar on the left to begin compiling the code. Click the "Compile Ordering.sol" button after ensuring that the "Compiler" option is set to"0.8.0" (or another compatible version). Following a successful compilation, select the "Deploy & Run Transactions" tab, choose "Remix VM (Cancun)" as the environment to simulate a local blockchain, and then click the "Deploy" button to deploy the contract. After the contract is deployed, you may use its functions to add new orders by giving it a name. You can also retrieve an order's name by using its ID by using the getOrderName function, which verifies that the IDs are legitimate using the require statement. Furthermore, you may test assertExample and revertExample to see how they manage errors and conditions in the contract. Every exchange will show how the contract controls commands and upholds restrictions.

# Authors

Rianne Mikaela Gayos
8215086@ntc.edu.ph

# License
This project is licensed under the MIT License - see the LICENSE.md file for details
