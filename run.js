import ethers from '@nomiclabs/hardhat-ethers'

const getBox = async () => {
    const Box = await ethers.getContractFactory('Box');
    const box = await Box.attach('0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0');
    console.log(box)
}