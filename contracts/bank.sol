pragma solidity ^0.5.0;

contract Bank{
    int bal;
    string message;

    constructor() public
    {
        bal = 1;
        message = "test";
    }

    function getBalance() view public returns(int)
    {
        return bal;
    }

    function withdraw(int amt) public
    {
        bal = bal - amt;
    }

    function deposit(int amt) public
    {
        bal = bal + amt;
    }

    function setMes(string memory _x) public
    {
        message = _x;
    }

    function getMes() view public returns(string memory)
    {
        return message;
    }
}