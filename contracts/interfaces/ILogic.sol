// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

// 必要なモジュールをインポートする。
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * ILogic インターフェース
 */
interface ILogic {
    function initialize(uint256 _value) external;

    function setValue(uint256 _a, uint256 _b) external returns (uint256);

    // function getRandomNumber(uint256 _num) external view returns (uint256);
}