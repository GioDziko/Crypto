// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;
    event Transfer(address from, address  receiver, uint amount, string message, uint256 timestamp, string keyword);
    struct TrasnferStruct{
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    TrasnferStruct[] transactions;

    function addToBlockchain(address payable receiver,uint amount,string memory message, string memory keyword ) public{
        transactionCount +=1;
        transactions.push(TrasnferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TrasnferStruct[] memory){
        return transactions;
    }

    function getTransactionCount() public view returns (uint256){
        return transactionCount;
    }

}