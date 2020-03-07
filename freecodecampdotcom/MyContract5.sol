// structs
pragma solidity 0.5.1;

contract MyContract5 {
    Person[] public people; //array

    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {  // add person
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }

}