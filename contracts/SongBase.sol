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
        // 첫 토큰 인덱스
        uint256 firstIdx;
    }

    /// @dev Tokenize된 곡
    struct Song {
        // 곡 정보(artist, title)의 Hash 값
        bytes32 songInfoHash;
        // 동일 한 곡 토큰 중 몇 번째인지
        uint8 seq;
    }

    // 한 곡 당 1개 생성
    mapping (bytes32 => SongInfo) hashToSongInfo;

    // 한 곡 당 발행 개수 만큼 생성
    Song[] songs;

}
