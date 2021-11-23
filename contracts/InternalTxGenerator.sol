//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.0;

interface ERC20 {
    function transfer(address _recipient, uint _tokens) external;
}

contract InternalTxGenerator {
    address private BSUDAddress = 0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee;
    address private WeenusAddress = 0xc5E0BfB82fd0A419D28E910271030bdD7793a09D;

    ERC20 BUSD = ERC20(BSUDAddress);
    ERC20 Weenus = ERC20(WeenusAddress);

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
