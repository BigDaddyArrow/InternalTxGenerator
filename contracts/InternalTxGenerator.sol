//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

interface WeenusInterface {
    function transfer(address to, uint256 tokens) external;
}

interface BUSDInterface {
    function transfer(address _to, uint256 _value) external;
}

contract InternalTxGenerator {
    address private BSUDAddress = 0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee;
    address private WeenusAddress = 0x703f112Bda4Cc6cb9c5FB4B2e6140f6D8374F10b;

    BUSDInterface BUSD = BUSDInterface(BSUDAddress);
    WeenusInterface Weenus = WeenusInterface(WeenusAddress);

    function internalTxWithToken(
        address payable _to,
        uint _BUSDValue,
        uint _weenusValue
    ) external payable {
        _to.transfer(msg.value);
        if (_BUSDValue > 0) {
            BUSD.transfer(_to, _BUSDValue);
        }
        if (_weenusValue > 0) {
            Weenus.transfer(_to, _weenusValue);
        }
    }
}
