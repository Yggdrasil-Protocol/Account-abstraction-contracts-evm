// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/core/EntryPoint.sol";

contract DeployEntryPoint is Script {
    function run() external {
        // uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        // vm.startBroadcast(deployerPrivateKey);
        vm.startBroadcast();

        // Deploy the implementation contract
        EntryPoint entryPoint = new EntryPoint();


        console.log("Entrypoint implementation deployed at:", address(entryPoint));

        vm.stopBroadcast();
    }
}