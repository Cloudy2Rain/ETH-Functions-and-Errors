// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ordering {
    uint public orderCount = 0;
    mapping(uint => string) public orders;

    event OrderCreated(uint id, string name);

    function createOrder(string memory _name) public {
        // Increment order count
        orderCount++;

        // Store the order
        orders[orderCount] = _name;

        // Emit event
        emit OrderCreated(orderCount, _name);
    }

    function getOrderName(uint _orderId) public view returns (string memory) {
        // Use require to check if the order ID is valid
        require(_orderId > 0 && _orderId <= orderCount, "Invalid order ID");
        return orders[_orderId];
    }

    function assertPrice(uint _value) public pure returns (uint) {
        // Assert that the value is greater than 0
        assert(_value > 0);
        return _value;
    }

    function revertExample(uint _value) public pure returns (uint) {
        // Revert if the value is not greater than 0
        if (_value <= 0) {
            revert("Value must be greater than 0");
        }
        return _value;
    }
}
