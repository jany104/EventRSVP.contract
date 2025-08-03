// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventRSVP {
    address public host;
    string public eventName;
    uint public eventDate;
    mapping(address => bool) public attendees;
    address[] public attendeeList;

    constructor(string memory _name, uint _date) {
        host = msg.sender;
        eventName = _name;
        eventDate = _date;
    }

    function rsvp() public {
        require(!attendees[msg.sender], "Already RSVP'd.");
        attendees[msg.sender] = true;
        attendeeList.push(msg.sender);
    }

    function hasRSVPed(address user) public view returns (bool) {
        return attendees[user];
    }

    function getAttendees() public view returns (address[] memory) {
        return attendeeList;
    }

    function getEventInfo() public view returns (string memory, uint, address) {
        return (eventName, eventDate, host);
    }
}
