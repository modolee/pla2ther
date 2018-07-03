pragma solidity ^0.4.24;

import "../ownership/Ownable.sol";

contract SongController is Ownable {
  constructor() public {
  }

  address[] internal songs;

  /// @notice 음원 토큰 등록
  function createToken(
    string _artist,
    string _title,
    string _fileURI,
    string _time,
    uint8 _capacity
  )
  public
  {
    address newSong
    = address(new SongToken(
        "Pla2therToken",
        "P2T",
        _artist,
        _title,
        _fileURI,
        _time,
        _capacity
      ));

    songs.push(newSong);
  }

  function getSong(uint256 _idx) public view returns (address) {
    require(songs.length > 0);
    require(_idx < songs.length);
    return songs[_idx];
  }

  /*  /// @notice 판매 등록
    function sell(SongToken _address, uint8 _id) public onlyOwnerOf(_id) {

    }

    /// @notice 판매 취소
    function cancelSell(SongToken _address, uint8 _id) public onlyOwnerOf(_id) {

    }

    /// @notice 구매
    function buy(SongToken _address, uint8 _id) public payable {
    }*/
}
