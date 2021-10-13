// scripts/deploy_upgradeable_adminbox.js
const { ethers, upgrades } = require('hardhat');

async function main() {
    const AdminBox = await ethers.getContractFactory('AdminBox');
    console.log('Deploying AdminBox...');
    const adminBox = await upgrades.deployProxy(AdminBox, ['0xb7D72254A6Ef5935f7dc8E66F1495c2f95c869e0'], { initializer: 'initialize' });
    await adminBox.deployed();
    console.log('AdminBox deployed to:', adminBox.address);
}

main();