// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract PayRouter {
    event ProductPaid(uint256 orderId, address indexed buyer, address indexed seller, uint256 amount);

    function payForProduct(uint256 orderId, address payable seller) external payable {
        require(msg.value > 0, "Nothing to pay");
        require(seller != address(0), "Invalid seller address");

        // Перевести ETH сразу продавцу
        (bool sent, ) = seller.call{value: msg.value}("");
        require(sent, "Failed to pay seller");

        emit ProductPaid(orderId, msg.sender, seller, msg.value);
    }
}