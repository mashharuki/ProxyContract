/**
 * =================================================
 *  Proxyコントラクト用のテストスクリプトファイル
 * =================================================
 */

// モジュールのインポート
const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');
// コントラクトの読み込み
const LogicV1 = artifacts.require("LogicV1");
const LogicV2 = artifacts.require("LogicV2");

/**
 * テストシナリオ
 */
contract ("proxy Contract tests!!", accounts => {
    describe('upgrades', () => {
        it('works', async () => {
            const v1 = await deployProxy(LogicV1, [42]);
            // 更新する。
            const v2 = await upgradeProxy(v1.address, LogicV2);
            // バリューを取得する。
            const value = await v2.value();
            assert.equal(value.toString(), '42');
            // 新しくバリューをセットする。
            await v2.setValue('42', 6);
            // 取得し直す。
            const value2 = await v2.value();
            assert.equal(value2.toString(), '90');
        });
      });
});