// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "./ERC20MinterPauserCapped.sol";

contract SwapperContract {
    address private erc20 = 0x3dc76d354Ba7Cd22d19F06776d1cd5b348e54Beb; 
    address private burner = 0x908d59dA9Cb7C368a3A28cb4072A8B0B4E938Ab1; // admin (ropsten)

    event SwapRequest(
        address indexed sender, 
        uint256 amount, 
        string algorandAddress
    );

    function doTransfer(uint256 _amount, string memory _algorand) public {
        ERC20MinterPauserCapped erc20Instance = ERC20MinterPauserCapped(erc20);
        erc20Instance.transferFrom(msg.sender, burner, _amount);
        emit SwapRequest(msg.sender, _amount, _algorand);
    }
}
