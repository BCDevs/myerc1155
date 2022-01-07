// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";


contract MyERC1155 is ERC1155 {
    
    string public name;
    string public symbol;


    constructor() ERC1155("https://bcdevs.github.io/myerc1155/metadata/{id}.json") {       
        name = "MYERC1155";
        symbol = "MY1155";
    }

    function createToken(uint _id, uint _amount) public {
        _mint(msg.sender, _id, _amount, "");
    }

    function createBatchTokens(uint256[] memory  _ids, uint256[] memory _amounts) public {
        _mintBatch(msg.sender, _ids, _amounts, "");
    }
}