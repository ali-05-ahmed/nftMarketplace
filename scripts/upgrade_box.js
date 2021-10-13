// scripts/upgrade_box.js
const { ethers, upgrades } = require('hardhat');

async function main() {
    const BoxV2 = await ethers.getContractFactory('BoxV2');
    console.log('Upgrading Box...');
    await upgrades.upgradeProxy('0x5F003F9EE192e04c71fE80c9c959c98e418d072E', BoxV2);
    console.log('Box upgraded');
}

main();