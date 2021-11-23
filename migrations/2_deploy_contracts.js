const { deployProxy } = require("@openzeppelin/truffle-upgrades");

var HumansToken = artifacts.require("HumansToken");

module.exports = async function (deployer) {
  const instance = await deployProxy(HumansToken, [], { deployer });
  console.log("Deployed", instance.address);
};
