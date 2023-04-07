// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract LogicalOperators{
    bool a = true;
    bool b = false;

    function logicalOperations() public view returns(bool, bool, bool, bool){
        bool and = a&&b;
        bool or = a||b;
        bool notA = !a;
        bool notB = !b;
        return(and, or, notA, notB);
    }
}
