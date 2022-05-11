// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; 
import "hardhat/console.sol";

contract Token {
    string public name ="AfroTree Token";
    string public symbol = 'AT';
    uint256 public totalSupply = 5000000000;
    address public owner;
    mapping (address => uint)balances;

    constructor () {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }
     function transfer (address to, uint amount) external {
         require(balances[msg.sender] >= amount,"Not Enough Tokens");
         balances[msg.sender] -= amount;
         balances[to] += amount;
     }
   
   function balancesOf (address account) external view returns (uint) {
       return balances[account];

   }
     
}