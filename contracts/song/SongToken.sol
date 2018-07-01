pragma solidity ^0.4.24;

import "./SongBase.sol";
import "../erc721/ERC721Token.sol";


contract SongToken is SongBase, ERC721Token {

  constructor() public {

  }
}
