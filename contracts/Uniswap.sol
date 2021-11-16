// pragma solidity ^0.8.0;

// import "https://github.com/Uniswap/uniswap-v2-periphery/blob/master/contracts/interfaces/IUniswapV2Router02.sol";

// //import the ERC20 interface

// interface IERC20 {
//     function totalSupply() external view returns (uint);
//     function balanceOf(address account) external view returns (uint);
//     function transfer(address recipient, uint amount) external returns (bool);
//     function allowance(address owner, address spender) external view returns (uint);
//     function approve(address spender, uint amount) external returns (bool);
//     function transferFrom(
//         address sender,
//         address recipient,
//         uint amount
//     ) external returns (bool);
//     event Transfer(address indexed from, address indexed to, uint value);
//     event Approval(address indexed owner, address indexed spender, uint value);
// }


// //import the uniswap router
// //the contract needs to use swapExactTokensForTokens
// //this will allow us to import swapExactTokensForTokens into our contract



// interface IUniswapV2Pair {
//   function token0() external view returns (address);
//   function token1() external view returns (address);
//   function swap(
//     uint256 amount0Out,
//     uint256 amount1Out,
//     address to,
//     bytes calldata data
//   ) external;
// }

// interface IUniswapV2Factory {
//   function getPair(address token0, address token1) external returns (address);
// }



// contract tokenSwap {
    
//     address private multiDaiKovan = 0xaD6D458402F60fD3Bd25163575031ACDce07538D;
    
//     //address of the uniswap v2 router
//     address private constant UNISWAP_V2_ROUTER = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;
    
//     //address of WETH token.  This is needed because some times it is better to trade through WETH.  
//     //you might get a better price using WETH.  
//     //example trading from token A to WETH then WETH to token B might result in a better price
//     address private constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    
    
//     function getWeth() public view returns(address){
//         return IUniswapV2Router02(UNISWAP_V2_ROUTER).WETH();
//     }
    
//         address internal constant UNISWAP_ROUTER_ADDRESS = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;

//     IUniswapV2Router02 public uniswapRouter;

//     constructor() public {
//         uniswapRouter = IUniswapV2Router02(UNISWAP_ROUTER_ADDRESS);
//     }

//     function getAmountsOut(uint fundingamount) public view returns (uint[] memory) {
//         address[] memory path;
//         path = new address[](2);
//             path[0] = getWeth();
//             path[1] = multiDaiKovan;
//         return uniswapRouter.getAmountsOut(fundingamount, path);     
//     }
    
//        //this function will return the minimum amount from a swap
//        //input the 3 parameters below and it will return the minimum amount out
//        //this is needed for the swap function above
     
// }