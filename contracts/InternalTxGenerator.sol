//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

contract InternalTxGenerator {
    function GenerateInternalTx() external payable {
        uint256 ethValue = msg.value;
        address payable recipient = payable(msg.sender);
        recipient.transfer(ethValue);
    }
}
