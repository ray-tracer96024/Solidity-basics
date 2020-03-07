pragma solidity 0.5.1;

contract MyContract {
    string value;
    
    constructor() public {
        value = "myValue";
    }
    
    function get() public view returns(string memory) {     // setting the visibility and returning only a string (0.4.24)
        return value;
    }
    
    function set(string memory _value) public {
        // datatype is declared in the above string (0.4.24)
        // memory is included for (0.5.1)
        value = _value;     // _value is a local variable
    }
}