//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract ErrorHandlingOfZeroDivision{ 
    uint public result;
    function tRequire(uint num, uint dnum) public {
         //using require function to handle the error.
        require(dnum != 0, "Denominator must be non-zero.");
        result = num / dnum;
    }

    function tAssert(uint num, uint dnum) public {
         //using assert function to handle the error.
        assert(dnum != 0);
        result = num / dnum;
    }

    function tRevert(uint num, uint dnum) public {
        if (dnum == 0) {
             //using revert function to handle the error.
            revert("Denominator must be non-zero.");
        }
        result = num/dnum;
    }

}
