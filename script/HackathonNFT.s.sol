// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Script.sol";

import {HackathonNFT} from "../src/HackathonNFT.sol";

contract DeployHackathonNFT is Script {
    function run() external {
        uint deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        HackathonNFT pp = new HackathonNFT();
        // Base URI of /metadata
        pp.setBaseURI("ipfs://Qmc6XoHKrh5Ysdx8mx2hrZrBwUC47bgrRoqsmz5RBvU8Ro/");
        pp.safeMint{value: 0.01 ether}(0x83c6dBCe02e4064601c9f78Ebe52890D606D8915);

        vm.stopBroadcast();
    }
}