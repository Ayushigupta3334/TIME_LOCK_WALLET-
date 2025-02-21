// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TimeLockedWallet {
    address public owner = msg.sender;
    uint256 public unlockTime = block.timestamp + 1 weeks; // Default lock time of 1 week

    event Deposited(address indexed sender, uint256 amount);
    event Withdrawn(address indexed recipient, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    modifier timeLocked() {
        require(block.timestamp >= unlockTime, "Funds are locked");
        _;
    }

    function deposit() external payable {
        require(msg.value > 0, "Must deposit some ether");
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw() external onlyOwner timeLocked {
        uint256 balance = address(this).balance;
        require(balance > 0, "No funds to withdraw");
        payable(owner).transfer(balance);
        emit Withdrawn(owner, balance);
    }
}

