pragma solidity 0.5.1;

contract MyContract6 {
    uint256 public peopleCount;
    mapping(uint => Person) public people;  //uint is the key and person is value, associative array, similar to dict in python
    
    struct Person { // will have default values
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1; // keep track of the number of people
        people[peopleCount] = Person(peopleCount, _firstName, _lastName); //assign the value
        // people.push(Person(_firstName, _lastName));
    }
    
}