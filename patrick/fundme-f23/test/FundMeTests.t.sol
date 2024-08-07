// SPDX-Licence-Identiefier: MITticketTransfer

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    function testMinDollar() public view {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }
}
