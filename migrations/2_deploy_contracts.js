const { deployProxy } = require("@openzeppelin/truffle-upgrades");

var HumansToken = artifacts.require("HumansToken");
var HumansTokenMock = artifacts.require("HumansTokenMock");

module.exports = async function (deployer) {
  let instance = await deployProxy(HumansToken, [], { deployer });
  console.log("Deployed HumansToken", instance.address);

  instance = await deployProxy(HumansTokenMock, [], { deployer });
  console.log("Deployed HumansTokenMock", instance.address);
};
