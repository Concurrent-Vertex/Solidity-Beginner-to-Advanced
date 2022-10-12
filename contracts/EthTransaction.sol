// SPDX-License-Identifier : UNNLICENSED

 pragma solidity ^0.8.16;

  contract EthTransaction {
   // this event is later emited in the sendETH function
   event Send(address indexed sender, address indexed to, uint amount);
      
      // this is the owner of the controlling address
      address public John;
      
      // we need to declear the constructor to initialize the address
      constructor() {
        John == msg.sender;
      }

      // let's map the address to get balance
      mapping(address => uint) public balance;
      
      // this function acts as a method of access restriction
      // only John can call the functions we had this modifier to
      modifier onlyOwner() {
          msg.sender == John;
          _;
      }
     
     // this function makes it possible for John to send tokens to Stanley or any othe person
   function sendEth() public payable onlyOwner{
   
   emit Send(msg.sender, address(this), msg.value);
   }   
  }