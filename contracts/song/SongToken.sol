pragma solidity ^0.4.24;

import "./SongBase.sol";
import "../token/ERC721/ERC721Token.sol";
import "../ownership/Ownable.sol";

contract SongToken is ERC721Token, SongBase, Ownable {

  constructor(
    string _name,
    string _symbol,
    string _artist,
    string _title,
    string _fileURI,
    address _creator,
    string _time,
    uint8 _capacity
  )
    ERC721Token(_name, _symbol)
    public
  {
    songInfo.artist = _artist;
    songInfo.title = _title;
    songInfo.fileURI = _fileURI;
    songInfo.creator = _creator;
    songInfo.time = _time;
    songInfo.capacity = _capacity;

    mint(_creator, _capacity);
  }

  function mint(address _creator, uint8 _capacity) public onlyOwner {
    for(uint8 i = 0; i < _capacity; i++) {
      super._mint(_creator, i);
    }
  }

}
