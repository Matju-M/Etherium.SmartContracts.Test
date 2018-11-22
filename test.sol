pragma solidity ^0.4.11;

contract LetsGo {
    uint i = 0;
    int[] array;
    enum MediaType {
        notSet,
        video, 
        casette, 
        dvd 
    }
    
    mapping (int => Media) kindaMapping;
    
    struct Media{
        MediaType mediaType;
        bool set;
    }
    
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
    
    function addSomething(int value) payable {
        array.push(value);
    }
    
    function addToMapping(MediaType mediaType, int location) payable {
        kindaMapping[location].set = true;
    
        if(kindaMapping[location].set){
            kindaMapping[location].mediaType = mediaType; 
        }
        
    }
    
    function getFromMapping(int location) constant returns (MediaType, bool) {
        return ( kindaMapping[location].mediaType, kindaMapping[location].set);
    }

}