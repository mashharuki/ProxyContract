# ProxyContract
Proxyパターンを実装するスマートコントラクト用のリポジトリです。

## プラグインについて
OpenZeppelinが用意してくれているのでそれを使う。

### 参考文献
 1. <a href="https://docs.openzeppelin.com/upgrades-plugins/1.x/truffle-upgrades">truffle-upgrades</a>
 2. <a href="https://blog.shinonome.io/transparent-proxy-pattern-contracts/">Transparent Proxy Patternでスマートコントラクトをアップグレーダブルにする</a>

### テストの結果
```cmd
Using network 'test'.


Compiling your contracts...
===========================
> Compiling ./contracts/LogicV1.sol
> Compiling ./contracts/LogicV2.sol
> Artifacts written to /var/folders/sx/2tp22cmd3lj2lsqnd8wblkj00000gn/T/test--7553-qKaV0riJ0TRk
> Compiled successfully using:
   - solc: 0.8.11+commit.d7f03943.Emscripten.clang
Deployed 0x345cA3e014Aaf5dcA488057592ee47305D9B3e10
Upgraded 0x345cA3e014Aaf5dcA488057592ee47305D9B3e10


  Contract: proxy Contract tests!!
    upgrades
      ✔ works (3220ms)


  1 passing (3s)
```