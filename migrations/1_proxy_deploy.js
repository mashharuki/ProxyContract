const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const Logicv1 = artifacts.require('Logicv1');

module.exports = async function (deployer) {
  // デプロイする。
  const instance = await deployProxy(Logicv1, [42], { deployer });
  console.log('Deployed', instance.address);
};