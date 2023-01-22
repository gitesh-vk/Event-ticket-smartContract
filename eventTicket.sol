// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventTicket{           //these are for ticketbooking and create metadata//
    uint256  totalTicket;
    uint256  ticketPrice;
    uint256  ticketAmount;
    uint256  startAt;
    uint256  endAt;
    uint256  timeRange;
    uint256 t_ID;
    string  message = "Buy Now";


    constructor(uint256 _ticketPrice){         

        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt) / 60 / 60 / 24;
    }


    function buyTicket(uint256 _value) public returns(uint256 ticketId){

        totalTicket++;
        ticketAmount += _value;
        ticketId = totalTicket;
        t_ID = ticketId;

    }

    function getAmount() public view returns(uint256){
        return ticketAmount;
    }

    function TicketID() public view returns(uint256){

        return t_ID;
    }
    
}