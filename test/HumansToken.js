const HumansToken = artifacts.require("HumansTokenMock");
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
    console.log("Human Token Security Contact ", contact);
    assert.equal(contact, "Vali Malinoiu <vali@humans.ai>", "Security contact does not match!");
  });
  it("should get the contract decimals", async () => {
    var decimals = await contract.decimals();
    assert.equal(decimals.toString(), "18", "Decimals are not correct");
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
    await truffleAssert.reverts(contract.TriggerTokenGenerationEvent(), "Humans Token: Token Generation Event already triggered!");
  });
  it("should verify the Public Sale Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var tgeUnlock = await contract.PublicSale_TGE_Unlock({ from: owner });
    var scheduledUnlock = await contract.TriggerPublicSaleScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "78000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Community Incentives & Rewards Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var scheduledUnlock = await contract.TriggerComunityIncentivesAndRewardsScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "234000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Private Sale Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var scheduledUnlock = await contract.TriggerPrivateSaleScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "1560000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Team Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var scheduledUnlock = await contract.TriggerTeamScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "780000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Marketing Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var tgeUnlock = await contract.Marketing_TGE_Unlock({ from: owner });
    var scheduledUnlock = await contract.TriggerMarketingScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "390000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Advisors and Strategic Partners Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var scheduledUnlock = await contract.TriggerAdvisorsAndStrategicPartnersScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "390000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Strategic OTC Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var scheduledUnlock = await contract.TriggerStrategicOTCScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "390000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Liquidity and Exchange Listing Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var tgeUnlock = await contract.LiquidityExchangeAndListings_TGE_Unlock({ from: owner });
    var scheduledUnlock = await contract.TriggerLiquidityExchangeAndListingScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "468000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Sustainable Development Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var tgeUnlock = await contract.SustainableDevelopment_TGE_Unlock({ from: owner });
    var scheduledUnlock = await contract.TriggerSustainableDevelopmentScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "780000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Business Development Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var tgeUnlock = await contract.BusinessDevelopment_TGE_Unlock({ from: owner });
    var scheduledUnlock = await contract.TriggerBusinessDevelopmentScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "780000000000000000000000000", "balance does not match at the end of the schedule");
  });
  it("should verify the Ai Mining and Staking Schedule", async () => {
    var tgeEvent = await contract.MockTriggerTokenGenerationEvent({ from: owner });
    var tgeUnlock = await contract.AiMiningAndStaking_TGE_Unlock({ from: owner });
    var scheduledUnlock = await contract.TriggerAIMiningAndStakingScheduledUnlock({ from: owner });
    var balance = await contract.balanceOf(owner);
    assert.equal(balance.toString(), "1950000000000000000000000000", "balance does not match at the end of the schedule");
  });
});
