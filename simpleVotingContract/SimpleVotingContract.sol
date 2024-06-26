// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleVotingContract {
    uint256 OBI;
    uint256 BAT;
    uint256 ATK;

    mapping(address => bool) register;
    struct Politician {
        string name;
        uint256 votes;
    }
    mapping(uint256 => Politician) votes;

    event Voted(address indexed voter, string message);

    constructor() {
        OBI = 0;
        BAT = 1;
        ATK = 2;

        votes[OBI] = Politician("OBI", 0);
        votes[BAT] = Politician("BAT", 0);
        votes[ATK] = Politician("ATK", 0);
    }

    function vote(address _address, uint256 politician_id) internal {
        if (register[_address]) {
            emit Voted(_address, "This address has already voted");
        } else {
            register[_address] = true;
            votes[politician_id].votes += 1;
            emit Voted(_address, "Voted successfully");
        }
    }

    function OBI_LP() public returns (uint256) {
        vote(msg.sender, OBI);
        return votes[OBI].votes;
    }

    function BAT_APC() public returns (uint256) {
        vote(msg.sender, BAT);
        return votes[BAT].votes;
    }

    function ATK_PDP() public returns (uint256) {
        vote(msg.sender, ATK);
        return votes[ATK].votes;
    }

    function check_votes() public view returns (Politician[] memory) {
        Politician[] memory politicians = new Politician[](3);
        for (uint256 i = 0; i < 3; i++) {
            politicians[i] = votes[i];
        }
        return politicians;
    }
}
