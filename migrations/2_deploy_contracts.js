var bankContract = artifacts.require("../contracts/bank.sol");
module.exports = function(deployer, network, accounts) {
 deployer.deploy(bankContract, {from: accounts[0]});
};