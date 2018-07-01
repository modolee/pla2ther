pragma solidity ^0.4.24;

import "./SongBase.sol";
import "../token/ERC721/ERC721Token.sol";


contract SongToken is SongBase, ERC721Token {

  constructor() public {

  }
}
