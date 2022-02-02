// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract NotaryStar {
    string public starName;
    address public starOwner;
    event claimedStar(address receiver, string startName);

    constructor() {
        starName = "First star";
    }

    function claimStar() public {
        starOwner = msg.sender;
        emit claimedStar(msg.sender, startName);
    }
}
