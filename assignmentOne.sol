// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract assingmentOne{

    // to define the owner, to be set during deployment
    address public owner;

    constructor () payable {
        owner = msg.sender;
    }
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    function sender(address payable _receiver, uint _amount) payable public returns(string memory) {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _receiver.call{value: _amount}("");
        require(sent, "Failed to send Ether");
        return "Ether sent";
    }
    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

}
