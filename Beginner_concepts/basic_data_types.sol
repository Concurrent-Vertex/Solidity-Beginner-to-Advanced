pragma solidity ^0.6.7;

contract myContract {
    string public name;
    string public constant surname = "sangwan";   //by using constant we are fixing the surname to the entered value
    
    //diff. tyoes of datatypes
    bool public is18 = true;
    int public age = -18;    //a int can be signed(+ve or -vs but a uint can only be +ve)
    uint public profit = 18;  
    uint8 public profit = 18;  
    uint256 public profit = 18;  
    
    constructor() public {
        name = "mohit";
    }
    function get() public view returns(string memory) {
        return name;
    }
    function set(string memory _name) public {
        name = _name;
    }  
} 