// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public value;

    function setValue(uint256 _value) external {
        // require statement
        require(_value > 0, "Value must be greater than 0");

        value = _value;
    }

    function getValue() external view returns (uint256) {
        return value;
    }

    function performAssertion() external pure {
        uint256 a = 5;
        uint256 b = 10;

        // assert statement
        assert(a > b);
    }

    function performRevert() external pure {
        uint256 a = 5;
        uint256 b = 10;

        // revert statement
        if (a < b) {
            revert("A is less than B");
        }
    }
}
