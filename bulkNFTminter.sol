//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;


import "./ERC721A.sol";
import "@openzeppelin/contracts@4.6.0/access/Ownable.sol";

contract NftMinter is ERC721A, Ownable {
  constructor() ERC721A("Sword", "SWD") {}

  function _baseURI() internal pure override returns (string memory) {
    return "https://iheartcraftythings.com/wp-content/uploads/2021/07/7.jpg";
  }

  function mint(address to, uint256 quantity) public onlyOwner {
    _safeMint(to, quantity);
  }
}