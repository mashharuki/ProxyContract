// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// 必要なモジュールをインポートする。
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/ILogic.sol";

/**
 * LogicV1コントラクト(コンストラクターの代わり)
 * 向き先を変更する前のコントラクト
 */
contract LogicV1 is Initializable, ILogic {
  
  // 任意の値を保持するための変数
  uint256 public value;

  /**
   * 初期化用の関数
   * @param _value 任意の値
   */
  function initialize(uint256 _value) public override initializer {
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
    // 結合してvalueを生成
    value = _value + num;
    return value;
  }
}