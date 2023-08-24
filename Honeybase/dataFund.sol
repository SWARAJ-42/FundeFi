// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract UploadHere {
    mapping(address=>uint) public contributors;
    string public Company;
    address public Company_address;
    uint public deadline;
    uint public price;
    uint public minimum_no_of_contributions;
    uint public No_of_contributions_till_now;

    constructor(string memory _Company, uint _deadline, uint _price, uint _minimum_no_of_contributions) {
        Company = _Company;
        deadline = block.timestamp + _deadline; 
        minimum_no_of_contributions = _minimum_no_of_contributions;
        Company_address = msg.sender;
        price = _price;
    }
}