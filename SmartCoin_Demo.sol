pragma solidity ^0.4.0;

contract SmartCoin{

    address deployer;	//the address of person who deploy this contract
    mapping(address=>uint) balances;	//give address will return number of balance
    
    function SmartCoin(){	//constructor function
        deployer=msg.sender;	//initialize the deployer address when this contract is constructed
    }
    
    function giveCoins(uint amount,address receiver){	//function for give coins
    if(msg.sender==deployer){	//if the person calling this function is the deployer of this contract then give coins to receiver
    balances[receiver]+=amount;//balance of address receiver
    }
    else{
        throw;
    }

    }
    
    function viewBalance() returns(uint){
        return balances[msg.sender];	//return the balance of the person who is using this function
    }
}
