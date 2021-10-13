// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol";


contract NftMarketplace is ERC721URIStorageUpgradeable {
    
    uint256 public tokenId;
    
    event newNft(address to,uint256 id);
    
    function initialize() initializer public {
       __ERC721_init("Market place", "MCO");
       __ERC721URIStorage_init();
       tokenId =0;
     }
  
    function awardNft(address to, string memory tokenURI)
        public
        returns (uint256)
    {
        tokenId++;

        _safeMint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        
        emit newNft(to,tokenId);
        return tokenId;
    }
}