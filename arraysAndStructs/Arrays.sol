// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Array {
    uint256[] ages;
    string[] names;
    address[] wallet_addresses;
    bool[] ether_wallets;

    function add_val(
        string memory name,
        uint256 age,
        address wallet_address,
        bool isEther_wallet
    ) public {
        ages.push(age);
        names.push(name);
        wallet_addresses.push(wallet_address);
        ether_wallets.push(isEther_wallet);
    }

    function retrieve_val(uint256 idx)
        public
        view
        returns (
            string memory,
            uint256,
            address,
            bool
        )
    {
        return (
            names[idx],
            ages[idx],
            wallet_addresses[idx],
            ether_wallets[idx]
        );
    }
}
