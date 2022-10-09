// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    uint256 public constant amount = 10 * 10**18;
    bool already_mint = false;

    constructor() ERC20("go", "GO") {}
    function mint(address to) public onlyOwner returns (bool){
        require(already_mint==false, "deja mint");
        _mint(to, amount);
        already_mint = true;
        return already_mint;
    }
}