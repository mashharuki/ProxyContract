// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// 必要なモジュールをインポートする
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/ILogic.sol";

/**
 * LogicV2コントラクト
 * 向き先を変更した後のコントラクト
 */
contract LogicV2 is Initializable, ILogic {

  // 任意の値を保持するための変数
  uint256 public value;

  /**
   * 初期化用の関数(コンストラクターの代わり)
   * @param _value 任意の値
   */
  function initialize(uint256 _value)
    public
    override
    initializer
  {
      value = _value;
  }

  /**
   * valueのsetterメソッド
   * @param _value 任意の値
   * @param num 任意の数字
   */
  function setValue(uint256 _value, uint256 num) 
    public
    override
    returns (uint256)
  {
    // valueの値の算出方法を変更する。
    value = 2 * _value + num;
    return value;
  }

}
