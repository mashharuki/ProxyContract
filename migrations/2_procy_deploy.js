// migrations/MM_upgrade_box_contract.js
const { upgradeProxy } = require('@openzeppelin/truffle-upgrades');

const Logicv1 = artifacts.require('Logicv1');
const Logicv2 = artifacts.require('Logicv2');

module.exports = async function (deployer) {
    // すでにデプロイしてあるコントラクトを取得する。
    const existing = await Logicv1.deployed();
    // アップグレードする。
    const instance = await upgradeProxy(existing.address, Logicv2, { deployer });
    console.log("Upgraded", instance.address);
};