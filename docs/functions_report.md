 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /volumes/code/humans/smartcontract/contracts/HumansToken.sol | 91f948be23aa960d2e3af416d792eb5d2df1e6bc |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol | e74327b24a10dedd238fd2249f91f0aa9a87b45c |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol | 7974877cb7863bef3e8ac366fbccdfa92d3e6d55 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol | 3326c3cb9b323b39ca763135e4fb83dec1284193 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol | 534de0af5a9fa18d87ac70919305f4f56e3445b9 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol | 3b684c30ed2ad0aed9baceb3fdcc6523e0279e8d |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20SnapshotUpgradeable.sol | 88ab76c7f6d14d8ee043014312812288c5c32fb6 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/utils/ArraysUpgradeable.sol | 3328af60990f03f91626282223b825c94fb9a930 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol | ef672ada00e0aa127172fc14f2880dd3eb2265e4 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol | 8f36e563d49fa4f0ccc1f3493cdc180d6bcecc3d |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol | 5a8e8da38a3246b45940652eae563f19e06adf07 |
| /volumes/code/humans/smartcontract/node_modules/@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol | 69aff045163100fb41a080c09f1f199d09327db9 |
| /volumes/code/humans/smartcontract/contracts/lib/Author.sol | 37ad2f9724d91e099a48d95075d25b047b9fb26b |
| /volumes/code/humans/smartcontract/contracts/lib/UnlockSchedule.sol | 983d4d5faa4f1b88542a894fb0596b3b554ba2eb |
| /volumes/code/humans/smartcontract/contracts/lib/DateTime.sol | 55ece994eb4877f3c972b68dfbead865eb9f732c |
| /volumes/code/humans/smartcontract/contracts/lib/Wallets.sol | ef6cf8e58638fe9a44712a1c58a7851c2328ed84 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **HumansToken** | Implementation | Initializable, ERC20Upgradeable, ERC20SnapshotUpgradeable, OwnableUpgradeable, PausableUpgradeable, Author, UnlockSchedule |||
| └ | <Constructor> | Public ❗️ | 🛑  | initializer |
| └ | initialize | Public ❗️ | 🛑  | initializer |
| └ | snapshot | Public ❗️ | 🛑  | onlyOwner |
| └ | pause | Public ❗️ | 🛑  | onlyOwner |
| └ | unpause | Public ❗️ | 🛑  | onlyOwner |
| └ | _beforeTokenTransfer | Internal 🔒 | 🛑  | whenNotPaused |
| └ | TriggerTokenGenerationEvent | Public ❗️ | 🛑  | onlyOwner |
| └ | PublicSale_TGE_Unlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerPublicSaleScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerComunityIncentivesAndRewardsScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerPrivateSaleScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerTeamScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | Marketing_TGE_Unlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerMarketingScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerAdvisorsAndStrategicPartnersScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerStrategicOTCScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | LiquidityExchangeAndListings_TGE_Unlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerLiquidityExchangeAndListingScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | SustainableDevelopment_TGE_Unlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerSustainableDevelopmentScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | BusinessDevelopment_TGE_Unlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerBusinessDevelopmentScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
| └ | AiMiningAndStaking_TGE_Unlock | Public ❗️ | 🛑  | onlyOwner |
| └ | TriggerAIMiningAndStakingScheduledUnlock | Public ❗️ | 🛑  | onlyOwner |
||||||
| **ERC20Upgradeable** | Implementation | Initializable, ContextUpgradeable, IERC20Upgradeable, IERC20MetadataUpgradeable |||
| └ | __ERC20_init | Internal 🔒 | 🛑  | initializer |
| └ | __ERC20_init_unchained | Internal 🔒 | 🛑  | initializer |
| └ | name | Public ❗️ |   |NO❗️ |
| └ | symbol | Public ❗️ |   |NO❗️ |
| └ | decimals | Public ❗️ |   |NO❗️ |
| └ | totalSupply | Public ❗️ |   |NO❗️ |
| └ | balanceOf | Public ❗️ |   |NO❗️ |
| └ | transfer | Public ❗️ | 🛑  |NO❗️ |
| └ | allowance | Public ❗️ |   |NO❗️ |
| └ | approve | Public ❗️ | 🛑  |NO❗️ |
| └ | transferFrom | Public ❗️ | 🛑  |NO❗️ |
| └ | increaseAllowance | Public ❗️ | 🛑  |NO❗️ |
| └ | decreaseAllowance | Public ❗️ | 🛑  |NO❗️ |
| └ | _transfer | Internal 🔒 | 🛑  | |
| └ | _mint | Internal 🔒 | 🛑  | |
| └ | _burn | Internal 🔒 | 🛑  | |
| └ | _approve | Internal 🔒 | 🛑  | |
| └ | _beforeTokenTransfer | Internal 🔒 | 🛑  | |
| └ | _afterTokenTransfer | Internal 🔒 | 🛑  | |
||||||
| **IERC20Upgradeable** | Interface |  |||
| └ | totalSupply | External ❗️ |   |NO❗️ |
| └ | balanceOf | External ❗️ |   |NO❗️ |
| └ | transfer | External ❗️ | 🛑  |NO❗️ |
| └ | allowance | External ❗️ |   |NO❗️ |
| └ | approve | External ❗️ | 🛑  |NO❗️ |
| └ | transferFrom | External ❗️ | 🛑  |NO❗️ |
||||||
| **IERC20MetadataUpgradeable** | Interface | IERC20Upgradeable |||
| └ | name | External ❗️ |   |NO❗️ |
| └ | symbol | External ❗️ |   |NO❗️ |
| └ | decimals | External ❗️ |   |NO❗️ |
||||||
| **ContextUpgradeable** | Implementation | Initializable |||
| └ | __Context_init | Internal 🔒 | 🛑  | initializer |
| └ | __Context_init_unchained | Internal 🔒 | 🛑  | initializer |
| └ | _msgSender | Internal 🔒 |   | |
| └ | _msgData | Internal 🔒 |   | |
||||||
| **Initializable** | Implementation |  |||
||||||
| **ERC20SnapshotUpgradeable** | Implementation | Initializable, ERC20Upgradeable |||
| └ | __ERC20Snapshot_init | Internal 🔒 | 🛑  | initializer |
| └ | __ERC20Snapshot_init_unchained | Internal 🔒 | 🛑  | initializer |
| └ | _snapshot | Internal 🔒 | 🛑  | |
| └ | _getCurrentSnapshotId | Internal 🔒 |   | |
| └ | balanceOfAt | Public ❗️ |   |NO❗️ |
| └ | totalSupplyAt | Public ❗️ |   |NO❗️ |
| └ | _beforeTokenTransfer | Internal 🔒 | 🛑  | |
| └ | _valueAt | Private 🔐 |   | |
| └ | _updateAccountSnapshot | Private 🔐 | 🛑  | |
| └ | _updateTotalSupplySnapshot | Private 🔐 | 🛑  | |
| └ | _updateSnapshot | Private 🔐 | 🛑  | |
| └ | _lastSnapshotId | Private 🔐 |   | |
||||||
| **ArraysUpgradeable** | Library |  |||
| └ | findUpperBound | Internal 🔒 |   | |
||||||
| **MathUpgradeable** | Library |  |||
| └ | max | Internal 🔒 |   | |
| └ | min | Internal 🔒 |   | |
| └ | average | Internal 🔒 |   | |
| └ | ceilDiv | Internal 🔒 |   | |
||||||
| **CountersUpgradeable** | Library |  |||
| └ | current | Internal 🔒 |   | |
| └ | increment | Internal 🔒 | 🛑  | |
| └ | decrement | Internal 🔒 | 🛑  | |
| └ | reset | Internal 🔒 | 🛑  | |
||||||
| **OwnableUpgradeable** | Implementation | Initializable, ContextUpgradeable |||
| └ | __Ownable_init | Internal 🔒 | 🛑  | initializer |
| └ | __Ownable_init_unchained | Internal 🔒 | 🛑  | initializer |
| └ | owner | Public ❗️ |   |NO❗️ |
| └ | renounceOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | transferOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | _setOwner | Private 🔐 | 🛑  | |
||||||
| **PausableUpgradeable** | Implementation | Initializable, ContextUpgradeable |||
| └ | __Pausable_init | Internal 🔒 | 🛑  | initializer |
| └ | __Pausable_init_unchained | Internal 🔒 | 🛑  | initializer |
| └ | paused | Public ❗️ |   |NO❗️ |
| └ | _pause | Internal 🔒 | 🛑  | whenNotPaused |
| └ | _unpause | Internal 🔒 | 🛑  | whenPaused |
||||||
| **Author** | Implementation |  |||
| └ | SecurityContact | Public ❗️ |   |NO❗️ |
||||||
| **UnlockSchedule** | Implementation |  |||
| └ | CurrentScheduleMonth | Public ❗️ |   |NO❗️ |
| └ | _initialize_tged | Internal 🔒 | 🛑  | |
| └ | _publicSale_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _comunity_incentives_and_rewards_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _privateSale_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _team_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _marketing_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _advisors_and_strategic_partners_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _strategic_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _liquidity_and_exchange_listings_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _sustainable_development_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _business_development_scheduled_unlock | Internal 🔒 | 🛑  | |
| └ | _ai_mining_and_staking_scheduled_unlock | Internal 🔒 | 🛑  | |
||||||
| **DateTime** | Library |  |||
| └ | _daysFromDate | Internal 🔒 |   | |
| └ | _daysToDate | Internal 🔒 |   | |
| └ | timestampFromDate | Internal 🔒 |   | |
| └ | timestampFromDateTime | Internal 🔒 |   | |
| └ | timestampToDate | Internal 🔒 |   | |
| └ | timestampToDateTime | Internal 🔒 |   | |
| └ | isValidDate | Internal 🔒 |   | |
| └ | isValidDateTime | Internal 🔒 |   | |
| └ | isLeapYear | Internal 🔒 |   | |
| └ | _isLeapYear | Internal 🔒 |   | |
| └ | isWeekDay | Internal 🔒 |   | |
| └ | isWeekEnd | Internal 🔒 |   | |
| └ | getDaysInMonth | Internal 🔒 |   | |
| └ | _getDaysInMonth | Internal 🔒 |   | |
| └ | getDayOfWeek | Internal 🔒 |   | |
| └ | getYear | Internal 🔒 |   | |
| └ | getMonth | Internal 🔒 |   | |
| └ | getDay | Internal 🔒 |   | |
| └ | getHour | Internal 🔒 |   | |
| └ | getMinute | Internal 🔒 |   | |
| └ | getSecond | Internal 🔒 |   | |
| └ | addYears | Internal 🔒 |   | |
| └ | addMonths | Internal 🔒 |   | |
| └ | addDays | Internal 🔒 |   | |
| └ | addHours | Internal 🔒 |   | |
| └ | addMinutes | Internal 🔒 |   | |
| └ | addSeconds | Internal 🔒 |   | |
| └ | subYears | Internal 🔒 |   | |
| └ | subMonths | Internal 🔒 |   | |
| └ | subDays | Internal 🔒 |   | |
| └ | subHours | Internal 🔒 |   | |
| └ | subMinutes | Internal 🔒 |   | |
| └ | subSeconds | Internal 🔒 |   | |
| └ | diffYears | Internal 🔒 |   | |
| └ | diffMonths | Internal 🔒 |   | |
| └ | diffDays | Internal 🔒 |   | |
| └ | diffHours | Internal 🔒 |   | |
| └ | diffMinutes | Internal 🔒 |   | |
| └ | diffSeconds | Internal 🔒 |   | |
||||||
| **Wallets** | Library |  |||


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |
