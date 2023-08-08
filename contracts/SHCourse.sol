// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract SHCourse {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function buyProCourse() public payable {
        require(
            msg.value == 1 ether,
            "Course prise is 1 eHMND. Please enter correct value."
        );

        owner.transfer(msg.value);
    }

    function buyProPlusCourse() public payable {
        require(
            msg.value == 2 ether,
            "Course prise is 2 eHMND. Please enter correct value."
        );

        owner.transfer(msg.value);
    }

    function buyProMaxCourse() public payable {
        require(
            msg.value == 3 ether,
            "Course prise is 3 eHMND. Please enter correct value."
        );

        owner.transfer(msg.value);
    }
}
