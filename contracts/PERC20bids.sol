// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./PERC20.sol";

contract PERC20Sample is PERC20 {
    constructor() PERC20("Sample PERC20", "pSWTR") {}

    receive() external payable {
        _mint(_msgSender(), msg.value);
    }

    function balanceOf(address account) public view override returns (uint256) {
        require(msg.sender == account, "PERC20Sample: msg.sender != account");
        return _balances[account];
    }

    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        require(msg.sender == spender, "PERC20Sample: msg.sender != spender");
        return _allowances[owner][spender];
    }
}
