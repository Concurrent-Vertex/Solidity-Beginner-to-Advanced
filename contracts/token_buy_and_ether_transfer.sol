pragma solidity ^0.6.7;

contract bank {
    mapping(address => uint256) public tokens;
    address payable wallet;
    
    constructor(address payable _ad) public {
        wallet = _ad;
    }
    
    //this event help us ot save the transaction logs i.t buyer address and token
    event successPurchase(address indexed buyer , uint256 amount);
    
    function buyToken() public payable {
        //buy as token
        tokens[msg.sender] += 1;  //increase the count of tokens that particular account have
        //send ethers from the token buying account to the deployed contract account
        wallet.transfer(msg.value);  //means we are transferring theether to the account adress which is saved in wallet variable
        emit successPurchase(msg.sender , 1);
    }
}