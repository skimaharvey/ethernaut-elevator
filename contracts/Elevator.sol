pragma solidity ^0.6.0;

interface Elevator {
    function goTo(uint256) external;
}

contract Building {
    Elevator public elevator;
    uint256 functionCalls;

    constructor(address _elevatorAddress) public {
        elevator = Elevator(_elevatorAddress);
    }

    function goTo(uint256 floor) public {
        elevator.goTo(floor);
    }

    function isLastFloor(uint256) external returns (bool) {
        if (functionCalls != 0) {
            functionCalls = functionCalls + 1;
            return true;
        } else {
            functionCalls = functionCalls + 1;
            return false;
        }
    }
}
