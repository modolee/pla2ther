pragma solidity ^0.4.24;

import "./SongBase.sol";
import "../token/ERC721/ERC721Token.sol";

contract SongToken is ERC721Token, SongBase {

  constructor(
    string _name,
    string _symbol,
    string _artist,
    string _title,
    string _fileURI,
    string _time,
    uint8 _capacity
  )
  ERC721Token(_name, _symbol)
  public
  {
    songInfo.artist = _artist;
    songInfo.title = _title;
    songInfo.fileURI = _fileURI;
    songInfo.time = _time;
    songInfo.capacity = _capacity;
  }

}
