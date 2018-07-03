pragma solidity ^0.4.24;

contract SongBase {

  /// @dev 곡 정보 공통
  struct SongInfo {
    // 가수, 연주자
    string artist;
    // 곡 명
    string title;
    // 파일이 저장 된 IPFS 주소
    string fileURI;
    // 최초 등록자
    address creator;
    // 등록 시간
    string time;
    // 발행 개수 (max : 100)
    uint8 capacity;
  }

  SongInfo songInfo;

}
