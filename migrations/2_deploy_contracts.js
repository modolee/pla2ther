var Users = artifacts.require("./Users.sol");
var Address = artifacts.require("./AddressUtils.sol");
var ERC165 = artifacts.require("./introspection/ERC165.sol");
var SIWL = artifacts.require("./introspection/SupportsInterfaceWithLookup.sol");
var SafeMath = artifacts.require("./math/SafeMath.sol");
var Ownable = artifacts.require("./ownership/Ownable.sol");
var SongBase = artifacts.require("./song/SongBase.sol");
var SongCtrl = artifacts.require("./song/SongController.sol");
var SongToken = artifacts.require("./song/SongToken.sol");
var ERC721 = artifacts.require("./token/ERC721/ERC721.sol");
var ERC721Basic = artifacts.require("./token/ERC721/ERC721Basic.sol");
var ERC721Holder = artifacts.require("./token/ERC721/ERC721Holder.sol");
var ERC721Receiver = artifacts.require("./token/ERC721/ERC721Receiver.sol");
var ERC721Token = artifacts.require("./token/ERC721/ERC721Token.sol");

module.exports = function(deployer) {
  deployer.deploy(Users);
  // deployer.deploy(Address);
  // deployer.deploy(ERC165);
  // deployer.deploy(SIWL);
  // deployer.deploy(SafeMath);
  // deployer.deploy(Ownable);
  // deployer.deploy(SongBase);
  // deployer.deploy(SongCtrl);
  // deployer.deploy(SongToken);
  // deployer.deploy(ERC721);
  // deployer.deploy(ERC721Basic);
  // deployer.deploy(ERC721Holder);
  // deployer.deploy(ERC721Receiver);
  // deployer.deploy(ERC721Token);
};
