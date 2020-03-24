pragma solidity >=0.4.25;
import "./AddressUtils.sol";
import "./JobContract.sol";

contract ContractCreator {
    
    address owner;
    uint8 public someInteger;
    
    address newToken;
    address[] public newTokens;
    uint public newTokensLength;
    
    constructor (address _addr) public {
        owner = _addr;
    }
    
    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }

    //Should hardcoded or use an argument processor
    function setContract() public onlyOwner returns(address) {
        address employee = 0xd01FBcED144bC55389BA6162da3b1bAf27B30713;
        //0xd01fbced144bc55389ba6162da3b1baf27b30713;
        newToken = new JobContract(100, 200, "runner", 300, employee, msg.sender);
        newTokens.push(newToken);
        newTokensLength ++;
        return(newToken);
    }
}
