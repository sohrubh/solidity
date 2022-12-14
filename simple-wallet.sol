// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Wallet {
    address payable public owner;

    constructor(address payable _owner) {
        owner = _owner;
    }

    function deposit() public payable {}

    function sendEther(address payable to, uint256 amount) public {
        // if (msg.sender == owner) {
        //     to.transfer(amount);
        //     return;
        // }
        // revert("sender is not allowed");

        require(msg.sender == owner, "sender is not allowed");
        to.transfer(amount);
    }

    function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }
}
