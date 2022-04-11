// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Token {
    string public name = "My Token";
    string public symbol = "TKN";
    uint8 public decimals = 0;

    uint256 public totalSupply = 10000;

    address public owner;

    mapping(address => uint256) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function giveMeTheMoney(uint256 amount) external {
        require(msg.sender == owner, "Only owner allowed");

        balances[owner] += amount;
        totalSupply += amount;
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "Not enough tokens");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
