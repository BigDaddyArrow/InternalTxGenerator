//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

interface BUSDInterface {
    function transfer(address _to, uint256 _value) external returns (bool);
}

contract InternalTxGenerator {
    address private BSUDAddress = 0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee;

    BUSDInterface BUSD = BUSDInterface(BSUDAddress);

    function internalTxWithToken(
        address payable _to,
        uint _BUSDValue
    ) external payable {
        _to.transfer(msg.value);
        if (_BUSDValue > 0) {
            BUSD.transfer(_to, _BUSDValue);
        }
    }
}
