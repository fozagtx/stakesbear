// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/Contract.sol";

contract TestContract is Test {
    StakingContract c;

    function setUp() public {
        c = new StakingContract();
    }

    function testStake() public {
        uint value = 10 ether;
        c.stake{value:value}(value);
        assertEq(c.totalStake == value);
    }

    function failStake() public {
        uint value = 10 ether;
        c.stake(value);
        assertEq(c.totalStake == value);
    }
}
