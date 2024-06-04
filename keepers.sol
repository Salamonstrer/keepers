// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract Salamonstrer is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Salamonstrer", "CPS")
        Ownable(initialOwner)
        ERC20Permit("Salamonstrer")
    {
        _mint(msg.sender, 1000000000 * 10 ** decimals());
    }
//for mintable Salamonstrer
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
