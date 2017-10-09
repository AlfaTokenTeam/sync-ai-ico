pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract SyncAI is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function SyncAI(address _owner)  UpgradeableToken(_owner) {
    name = "SyncAI";
    symbol = "Sai";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}