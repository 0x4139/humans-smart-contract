const HumansToken = artifacts.require("HumansToken");
const truffleAssert = require("truffle-assertions");
const { deployProxy } = require("@openzeppelin/truffle-upgrades");

contract("HumansToken", (accounts) => {
  let contract;
  const owner = accounts[0];

  beforeEach(async () => {
    contract = await deployProxy(HumansToken, []);
  });

  console.log("Human Token Contract Owner ", owner);
  it("should get the security contact", async () => {
    var contact = await contract.SecurityContact();
    console.log(contact);
    assert.equal(contact, "Vali Malinoiu <vali@humans.ai>", "Security contact does not match!");
  });

  it("should get the owner of the contract", async () => {
    var contract_owner = await contract.owner();
    assert.equal(contract_owner, owner, "Contract owner does not match!");
  });

  it("should trigger the token generation event", async () => {
    var event = await contract.TriggerTokenGenerationEvent();
  });

  it("should trigger the token generation event only once and revert on the second trigger", async () => {
    var event = await contract.TriggerTokenGenerationEvent();
    await truffleAssert.reverts(contract.TriggerTokenGenerationEvent(), "Humans Token: Token Generation Event already initialized!");
  });

  it("should have the balance accordingly to the Token Generation Event", async () => {
    var event = await contract.TriggerTokenGenerationEvent();
    var balance = (await contract.balanceOf(owner)).toString();
    assert.equal(balance, "1", "The balances after event do not match!");
  });

  it("should fail when triggering a schedule unlock without Token Generation Event", async () => {
    await truffleAssert.reverts(contract.TriggerPublicSaleScheduleUnlock(), "Humans Token: Token Generation Event was not initialized!");
  });

  it("should have the balance accordingly to the Token Generation Event and Token Unlock Schedule", async () => {
    var tge = await contract.TriggerTokenGenerationEvent();
    var tge = await contract.TriggerPublicSaleScheduleUnlock();
    var balance = (await contract.balanceOf(owner)).toString();
    assert.equal(balance, "3", "The balances after event do not match!");
  });

  it("should have the balance accordingly to the Token Generation Event and Token Unlock Schedule and cannot unlock a second time", async () => {
    var tge = await contract.TriggerTokenGenerationEvent();
    var unlockPeriod = await contract.TriggerPublicSaleScheduleUnlock();
    await truffleAssert.reverts(contract.TriggerPublicSaleScheduleUnlock(), "Humans Token: nothing to unlock from the public sale wallet schedule!");

    var balance = (await contract.balanceOf(owner)).toString();
    assert.equal(balance, "3", "The balances after event do not match!");
  });
});
