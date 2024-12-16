// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract BooksScript is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy the contract without storing the unused variable
        new Books("Programming Foundry", "Durga Prasad Pallapu", 100);

        vm.stopBroadcast();
    }
}
