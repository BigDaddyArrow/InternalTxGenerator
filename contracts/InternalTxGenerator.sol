//SPDX-License-Identifier: UNLICENSED

pragma solidity 0.5.0;

//interface TestUsdtToken {
//    function transferFrom(address _from, address _to, uint256 _value) external payable;
//}
//
//interface WeenusToken {
//    function transferFrom(address from, address to, uint tokens) external returns (bool success);
//}
//
//interface YeenusToken {
//    function transferFrom(address from, address to, uint tokens) external returns (bool success);
//}

contract ERC20 {
    function transfer(address _recipient, uint _tokens) public;
}

contract InternalTxGenerator {
    address private XeenusAddress = 0x7E0480Ca9fD50EB7A3855Cf53c347A1b4d6A2FF5;
    address private WeenusAddress = 0x101848D5C5bBca18E6b4431eEdF6B95E9ADF82FA;
    address private YeenusAddress = 0xF6fF95D53E08c9660dC7820fD5A775484f77183A;

    ERC20 Xeenus = ERC20(XeenusAddress);
    ERC20 Weenus = ERC20(WeenusAddress);
    ERC20 Yeenus = ERC20(YeenusAddress);

    function internalTxWithToken(
        address payable _to,
        uint _xeenusValue,
        uint _weenusValue,
        uint _yeenusValue
    ) external payable {
        _to.transfer(msg.value);
        if (_xeenusValue > 0) {
            Xeenus.transfer(_to, _xeenusValue);
        }
        if (_weenusValue > 0) {
            Weenus.transfer(_to, _weenusValue);
        }
        if (_yeenusValue > 0) {
            Yeenus.transfer(_to, _yeenusValue);
        }
    }
}
