// SPDX-License-Identifier: Humans Token AG
pragma solidity ^0.8.10;

contract Author {
  string constant author_name = "Vali Malinoiu <vali@humans.ai>";

  function SecurityContact() public pure returns (string memory) {
    return author_name;
  }
}
