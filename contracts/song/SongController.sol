pragma solidity ^0.4.24;

import  "./SongBase.sol";
import "./SongToken.sol";

contract SongController is SongBase {
  constructor() {
  }

  /// @notice 음원 토큰 등록
  function createToken(
    string _artist,
    string _title,
    string _fileURI,
    string _capacity
  )
    public
  {
    SongInfo memory newSong = SongInfo({
      artist:_artist,
      title:_title,
      fileURI:_fileURI,
      creator:_msg.sender(),
      time:now,
      capacity:_capacity
    });

    new SongToken(newSong);
  }

  /// @notice 판매 등록
  function sell(SongToken _address, uint8 _id) public onlyOwnerOf {
  }

  /// @notice 판매 취소
  function cancelSell(SongToken _address, uint8 _id) public onlyOwnerOf {

  }

  /// @notice 구매
  function buy(SongToken _address, uint8 _id) public payable {
  }
}
