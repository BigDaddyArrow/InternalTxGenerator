//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

contract InternalTxGenerator {
    function GenerateInternalTx() external payable {
        payable(msg.senderGeb).transfer(msg.value);
    }
    function GenerateInternalTxToAddr(address payable _addr) external payable {
        _addr.transfer(msg.value);
    }
}
