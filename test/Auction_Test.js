// const { expect } = require("chai");
// const { ethers } = require("hardhat");

// describe("NFT", function () {
//     let Auction
//     let auction

//     let NftMarketplace
//     let nftMarketplace

//     let Nft;
//     let nft

//     let [_, person1, person2] = [1, 1, 1]


//     it("Should Auction contracts ", async function () {
//         [_, person1, person2] = await ethers.getSigners()

//         Auction = await ethers.getContractFactory("Auction");
//         auction = await Auction.deploy(person2.address);
//         await auction.deployed();

//         NftMarketplace = await ethers.getContractFactory("NftMarketplace");
//         nftMarketplace = await upgrades.deployProxy(NftMarketplace, [auction.address], { initializer: 'initialize' });
//         await nftMarketplace.deployed();

//         Nft = await ethers.getContractFactory("Nft");
//         nft = await Nft.deploy(nftMarketplace.address);
//         await nft.deployed();

//     });
//     it("Should create two nfts ", async function () {
//         let setNftTx = await nft.createToken("jjghhj");

//         // wait until the transaction is mined
//         await setNftTx.wait();

//         setNftTx = await nft.connect(person1).createToken("saddsasda");

//         // wait until the transaction is mined
//         await setNftTx.wait();
//         // console.log(await greeter.ownerOf(1))
//         expect(await nft.ownerOf(1)).to.equal(_.address);
//         expect(await nft.ownerOf(2)).to.equal(person1.address);
//         let total = await nft.totalSupply();
//         total = await ethers.BigNumber.from(total).toString()
//         expect(total).to.equal('2')

//     });
//     it("Should create Auction of First NFT ", async function () {
//         let setNftTx = await nft.createToken("jjghhj");

//         // wait until the transaction is mined
//         await setNftTx.wait();

//         setNftTx = await nft.connect(person1).createToken("saddsasda");

//         // wait until the transaction is mined
//         await setNftTx.wait();
//         // console.log(await greeter.ownerOf(1))
//         expect(await nft.ownerOf(1)).to.equal(_.address);
//         expect(await nft.ownerOf(2)).to.equal(person1.address);
//         let total = await nft.totalSupply();
//         total = await ethers.BigNumber.from(total).toString()
//         expect(total).to.equal('2')

//     });

// });
