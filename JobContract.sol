pragma solidity >=0.4.25;
import "./AddressUtils.sol";

contract JobContract {
    
    uint public start;
    uint public end;
    string public title;
    uint public payment;
    address public employee;
    address public employer;
    
    constructor(uint _start, uint _end, string _title, uint _payment, address _employee, address _employer) public {
        start = _start;
        end = _end;
        title = _title;
        payment = _payment;
        employee = _employee;
        employer = _employer;
    }
}
