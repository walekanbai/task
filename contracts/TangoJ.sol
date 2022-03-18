// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TangoJ is ERC20, Ownable {
    uint256 public rate = 1000 * 10 ** decimals();
    constructor() ERC20("TangoJ", "TGJ") {
         _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function byTokens (address reciever) public payable returns (uint256) {
        uint256 token = msg.value * 1 * 10 ** 18;
        _mint(reciever, token); 
        return token;
    }
}