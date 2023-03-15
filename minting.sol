pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public minter;
    
    constructor() ERC20("My Token", "MTK") {
        minter = msg.sender;
    }

    function mint(address to, uint256 amount) public {
        require(msg.sender == minter, "Only minter can call this function");
        _mint(to, amount);
    }
}
