// time
pragma solidity 0.5.1;

contract MyContract7 {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
//    address owner; // address is a datatype that is similar to an account

    uint256 openingTime = 1583581860;
    
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime); // will give out boolean values
        _;
    }
    
    struct Person {
        uint _id;
        string _firstname;
        string _lastname;
    }
    
//    constructor() public { // gets set to the owner variable declared above
//        owner = msg.sender; // this deploys the smart contract
//    }
    
    function addPerson(string memory _firstname, string memory _lastname) public onlyWhileOpen { // will be called by the onlyWhileOpen defined above
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstname, _lastname);
    }
    
    function incrementCount() internal { // hiding the increments so that it wont be modified by anyone
        peopleCount += 1;
    }
}