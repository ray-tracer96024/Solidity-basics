pragma solidity 0.5.1;

contract MyContract9 {
    mapping(address => uint256) public balances;
    address payable wallet;
 
    event Purchase(address _buyer, uint256 _amount); //check for any transaction happening
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function () external payable { // external can only be called by outside
        buyToken();
    }
    
    function buyToken() public payable { // people can send in the ether that's why public is defined, payable is another modifier
        // buy a token
        balances[msg.sender] += 1;
        
        // send ether to wallet
        wallet.transfer(msg.value);
        
        emit Purchase(msg.sender, 1);
    }
}