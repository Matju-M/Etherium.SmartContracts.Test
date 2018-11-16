pragma solidity ^0.4.11;

contract LetsGo {
    uint i = 0;
    
    function getI() constant returns (uint) {
        return i;
    }
    
    function PayableFn (uint x, uint y) payable returns (uint) {
        i = x + y;
        return i;
    } 
    
    function ConstantFn (uint x, uint y) constant returns (uint) {
        i = x + y;
        return i;
    }
}
