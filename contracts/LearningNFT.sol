// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract LearningNFT is ERC721URIStorage {
    uint256 private _tokenIdCounter;

    constructor() ERC721("LearningNFT", "LNFT") {}

    function mintNFT(address recipient, string memory metadataURI) public {
        uint256 tokenId = _tokenIdCounter;
        _mint(recipient, tokenId);
        _setTokenURI(tokenId, metadataURI);
        _tokenIdCounter++;
    }

    // tokenURI function is already implemented in ERC721URIStorage
}
