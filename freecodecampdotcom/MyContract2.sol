// tutorial followed from https://youtu.be/ipwxYa-F1uY
// here we remove the get function and expose the value using the public keyword

pragma solidity 0.5.1;

contract MyContract2 {
    string public value = "myValue";
    
//    constructor() public {
//        value = "myValue";
//    }
 
// remove the constructor since we can declare value = "myValue" 
    
    function set(string memory _value) public {
        value = _value;
    }
    
}