// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FrewenReserve is ERC20, Ownable {

constructor(address initialOwner) ERC20("Frewen Reserve", "FRWN") Ownable(initialOwner) {
    _mint(initialOwner, 1_000_000 * 10 ** decimals());
}


    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
