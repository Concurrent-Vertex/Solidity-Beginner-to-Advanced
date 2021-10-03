pragma solidity ^0.6.7;

contract enumTut {
        //enums
    enum choices {
        badminton,
        reading,
        excercising,
        coding
    }
    choices public hobby;
    
    constructor() public {
        hobby = choices.coding;
    }
    function pm_time() public {
        hobby = choices.badminton;
    }
    function isBadminton() public view returns(bool) {
        return hobby == choices.badminton;
    }
}