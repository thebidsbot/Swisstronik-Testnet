// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./IPERC20.sol";

interface IERC20Metadata is IPERC20 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}
