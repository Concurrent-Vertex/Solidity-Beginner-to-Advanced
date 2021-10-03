pragma solidity ^0.6.7;

contract myStruct {
    struct Person {
        string fn;
        string ln;
    }
    
    // adding peole in array
    Person [] public people;
    uint256 public peopleCount = 0;
    
    function addPerson(string memory _fn , string memory _ln) public {
        people.push(Person(_fn , _ln));
        peopleCount += 1;
    }
    
    //adding people in map
    uint public pc = 0;
    function increaseCount() internal {
        pc += 1;
    }
    mapping(uint => Person) public peopleMap;
    function addInMap(string memory _fn , string memory _ln) public {
        increaseCount();
        peopleMap[pc] = Person(_fn , _ln);
    }
    
    //making custom accessmodifiers 
    
    address owner;
    uint openingTime = 1522667738;     //this is eposch time unit
    constructor() public {
        owner = msg.sender;  //it will assign the owner to the address of the peson who deployes the contract first
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);   //mag.sender gives us the address of the account which clicked that button
        _;
    }
    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
        _;
    }
    function adminAddMap(string memory _fn , string memory _ln) public onlyOwner onlyWhileOpen {
        increaseCount();
        peopleMap[pc] = Person(_fn , _ln);
    }
}