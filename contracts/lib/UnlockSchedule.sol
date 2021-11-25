// SPDX-License-Identifier: Humans Token AG
pragma solidity 0.8.10;

import "./DateTime.sol";

struct UnlockInformation {
  uint256 Amount;
  bool Claimed;
}

contract UnlockSchedule {
  mapping(uint256 => UnlockInformation) internal PUBLIC_SALE_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal PRIVATE_SALE_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal TEAM_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal MARKETING_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal STRATEGIC_OTC_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal SUSTAINABLE_DEVELOPMENT_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal BUSINESS_DEVELOPMENT_SCHEDULE;
  mapping(uint256 => UnlockInformation) internal AI_MINING_AND_STAKING_REWARDS_SCHEDULE;

  uint256 internal _tged;
  bool internal _tgeInitialized;
  uint256 private constant _totalMonths = 49;
  event ScheduleUnlock(string indexed, uint256 indexed, uint256 indexed, uint256);

  function CurrentScheduleMonth() public view returns (uint256 month) {
    month = DateTime.diffMonths(_tged, block.timestamp);
  }

  function _initialize_tged() internal {
    _tged = block.timestamp;
    _tgeInitialized = true;

    //public sale wallet schedule
    PUBLIC_SALE_SCHEDULE[0] = UnlockInformation({Amount: 26000000000000000000000000, Claimed: false}); // Token Generation Event
    PUBLIC_SALE_SCHEDULE[3] = UnlockInformation({Amount: 52000000000000000000000000, Claimed: false}); // Month 1

    //Community Incentives & Rewards wallet schedule
    COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[6] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 6
    COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[9] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 9
    COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[12] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 12
    COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[15] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 15

    //Private Sale wallet schedule
    PRIVATE_SALE_SCHEDULE[3] = UnlockInformation({Amount: 156000000000000000000000000, Claimed: false}); // Month 3
    PRIVATE_SALE_SCHEDULE[6] = UnlockInformation({Amount: 312000000000000000000000000, Claimed: false}); // Month 6
    PRIVATE_SALE_SCHEDULE[9] = UnlockInformation({Amount: 156000000000000000000000000, Claimed: false}); // Month 9
    PRIVATE_SALE_SCHEDULE[12] = UnlockInformation({Amount: 312000000000000000000000000, Claimed: false}); // Month 12
    PRIVATE_SALE_SCHEDULE[15] = UnlockInformation({Amount: 156000000000000000000000000, Claimed: false}); // Month 15
    PRIVATE_SALE_SCHEDULE[18] = UnlockInformation({Amount: 312000000000000000000000000, Claimed: false}); // Month 18
    PRIVATE_SALE_SCHEDULE[21] = UnlockInformation({Amount: 156000000000000000000000000, Claimed: false}); // Month 21

    // Team wallet schedule
    TEAM_SCHEDULE[13] = UnlockInformation({Amount: 78000000000000000000000000, Claimed: false}); // Month 13
    TEAM_SCHEDULE[19] = UnlockInformation({Amount: 78000000000000000000000000, Claimed: false}); // Month 19
    TEAM_SCHEDULE[25] = UnlockInformation({Amount: 117000000000000000000000000, Claimed: false}); // Month 25
    TEAM_SCHEDULE[31] = UnlockInformation({Amount: 117000000000000000000000000, Claimed: false}); // Month 31
    TEAM_SCHEDULE[37] = UnlockInformation({Amount: 117000000000000000000000000, Claimed: false}); // Month 37
    TEAM_SCHEDULE[43] = UnlockInformation({Amount: 117000000000000000000000000, Claimed: false}); // Month 43
    TEAM_SCHEDULE[49] = UnlockInformation({Amount: 156000000000000000000000000, Claimed: false}); // Month 43

    // Marketing wallet schedule
    MARKETING_SCHEDULE[0] = UnlockInformation({Amount: 5000000000000000000000000, Claimed: false}); // Token Generation Event
    MARKETING_SCHEDULE[3] = UnlockInformation({Amount: 60000000000000000000000000, Claimed: false}); // Month 3
    MARKETING_SCHEDULE[4] = UnlockInformation({Amount: 60000000000000000000000000, Claimed: false}); // Month 4
    MARKETING_SCHEDULE[5] = UnlockInformation({Amount: 60000000000000000000000000, Claimed: false}); // Month 5
    MARKETING_SCHEDULE[6] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 6
    MARKETING_SCHEDULE[7] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 7
    MARKETING_SCHEDULE[8] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 8
    MARKETING_SCHEDULE[9] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 9
    MARKETING_SCHEDULE[10] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 10
    MARKETING_SCHEDULE[11] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 11
    MARKETING_SCHEDULE[12] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 12
    MARKETING_SCHEDULE[13] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 13
    MARKETING_SCHEDULE[14] = UnlockInformation({Amount: 20000000000000000000000000, Claimed: false}); // Month 14
    MARKETING_SCHEDULE[15] = UnlockInformation({Amount: 25000000000000000000000000, Claimed: false}); // Month 15

    // Advisors and Strategic Partners wallet schedule
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[13] = UnlockInformation({Amount: 39000000000000000000000000, Claimed: false}); // Month 13
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[19] = UnlockInformation({Amount: 39000000000000000000000000, Claimed: false}); // Month 19
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[25] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 25
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[31] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 31
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[37] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 37
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[42] = UnlockInformation({Amount: 58500000000000000000000000, Claimed: false}); // Month 42
    ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[49] = UnlockInformation({Amount: 78000000000000000000000000, Claimed: false}); // Month 49

    //Strategic OTC wallet schedule
    STRATEGIC_OTC_SCHEDULE[3] = UnlockInformation({Amount: 97500000000000000000000000, Claimed: false}); // Month 3
    STRATEGIC_OTC_SCHEDULE[7] = UnlockInformation({Amount: 97500000000000000000000000, Claimed: false}); // Month 7
    STRATEGIC_OTC_SCHEDULE[18] = UnlockInformation({Amount: 97500000000000000000000000, Claimed: false}); // Month 18
    STRATEGIC_OTC_SCHEDULE[24] = UnlockInformation({Amount: 97500000000000000000000000, Claimed: false}); // Month 24

    //Liquidity and exchange listings wallet schedule
    LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[0] = UnlockInformation({Amount: 234000000000000000000000000, Claimed: false}); // Token Generation Event
    LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[3] = UnlockInformation({Amount: 117000000000000000000000000, Claimed: false}); // Month 3
    LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[6] = UnlockInformation({Amount: 117000000000000000000000000, Claimed: false}); // Month 6

    for (uint8 i = 0; i <= _totalMonths; i++) {
      //Sustainable development wallet schedule
      SUSTAINABLE_DEVELOPMENT_SCHEDULE[i] = UnlockInformation({Amount: 15600000000000000000000000, Claimed: false});
      //Business Development wallet schedule
      BUSINESS_DEVELOPMENT_SCHEDULE[i] = UnlockInformation({Amount: 15600000000000000000000000, Claimed: false});
      //AI Mining / Staking rewards schedule
      AI_MINING_AND_STAKING_REWARDS_SCHEDULE[i] = UnlockInformation({Amount: 39000000000000000000000000, Claimed: false});
    }
  }

  function _publicSale_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (PUBLIC_SALE_SCHEDULE[month].Claimed == true) {
        break;
      }
      PUBLIC_SALE_SCHEDULE[month].Claimed = true;
      amount += PUBLIC_SALE_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Public Sale Schedule - scheduled unlocked", PUBLIC_SALE_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _comunity_incentives_and_rewards_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[month].Claimed == true) {
        break;
      }
      COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[month].Claimed = true;
      amount += COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Comunity Incentives and Rewards Schedule - scheduled unlocked", COMUNITY_INCENTIVES_AND_REWARDS_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _privateSale_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (PRIVATE_SALE_SCHEDULE[month].Claimed == true) {
        break;
      }
      PRIVATE_SALE_SCHEDULE[month].Claimed = true;
      amount += PRIVATE_SALE_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Private Sale Schedule - scheduled unlocked", PRIVATE_SALE_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _team_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (TEAM_SCHEDULE[month].Claimed == true) {
        break;
      }
      TEAM_SCHEDULE[month].Claimed = true;
      amount += TEAM_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Team Schedule - scheduled unlocked", TEAM_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _marketing_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (MARKETING_SCHEDULE[month].Claimed == true) {
        break;
      }
      MARKETING_SCHEDULE[month].Claimed = true;
      amount += MARKETING_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Marketing Schedule - scheduled unlocked", MARKETING_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _advisors_and_strategic_partners_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[month].Claimed == true) {
        break;
      }
      ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[month].Claimed = true;
      amount += ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Marketing Schedule - scheduled unlocked", ADVISORS_AND_STRATEGIC_PARTNERS_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _strategic_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (STRATEGIC_OTC_SCHEDULE[month].Claimed == true) {
        break;
      }
      STRATEGIC_OTC_SCHEDULE[month].Claimed = true;
      amount += STRATEGIC_OTC_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Strategic OTC Schedule - scheduled unlocked", STRATEGIC_OTC_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _liquidity_and_exchange_listings_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[month].Claimed == true) {
        break;
      }
      LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[month].Claimed = true;
      amount += LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Strategic OTC Schedule - scheduled unlocked", LIQUIDITY_AND_EXCHANGE_LISTINGS_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _sustainable_development_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (SUSTAINABLE_DEVELOPMENT_SCHEDULE[month].Claimed == true) {
        break;
      }
      SUSTAINABLE_DEVELOPMENT_SCHEDULE[month].Claimed = true;
      amount += SUSTAINABLE_DEVELOPMENT_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Sustainable Development Schedule - scheduled unlocked", SUSTAINABLE_DEVELOPMENT_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _business_development_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (BUSINESS_DEVELOPMENT_SCHEDULE[month].Claimed == true) {
        break;
      }
      BUSINESS_DEVELOPMENT_SCHEDULE[month].Claimed = true;
      amount += BUSINESS_DEVELOPMENT_SCHEDULE[month].Amount;
      emit ScheduleUnlock("Business Development Schedule - scheduled unlocked", BUSINESS_DEVELOPMENT_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }

  function _ai_mining_and_staking_scheduled_unlock() internal returns (uint256 amount) {
    amount = 0;
    for (uint256 month = DateTime.diffMonths(_tged, block.timestamp); month > 0; month--) {
      if (AI_MINING_AND_STAKING_REWARDS_SCHEDULE[month].Claimed == true) {
        break;
      }
      AI_MINING_AND_STAKING_REWARDS_SCHEDULE[month].Claimed = true;
      amount += AI_MINING_AND_STAKING_REWARDS_SCHEDULE[month].Amount;
      emit ScheduleUnlock("AI Mining and Staking Schedule - scheduled unlocked", AI_MINING_AND_STAKING_REWARDS_SCHEDULE[month].Amount, month, block.timestamp);
    }
  }
}
