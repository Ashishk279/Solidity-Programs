// SPDX-License-Identifier:MIT
pragma solidity >=0.8.13 <0.8.21;

// Interface:
// You can interact with other contracts by declaring an INterface.
// interface -
//  1. cannot have any functions implemented
//  2. can inherit from other interfaces
//  3. all declared functions must be external 
//  4. cannot declare state variables.

contract Counter{
    uint public count;
    function increement() external{
        count += 1;
    }
}
interface ICounter{
    function count() external view returns(uint) ;
    function increement() external;
}

contract MyContract {
    function increementCounter(address _counter) external {
        ICounter(_counter).increement();
    }

    function getCount(address _counter) external view returns (uint){
        return ICounter(_counter).count();
    }

}

// Uniswap example
interface UniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface UniswapV2Pair {
    function getReserves() external view returns(uint112 reserve0, uint112 reserve1, uint32 blockTimeLast);
}

contract UniswapExample{
    address private factory = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
    address private dai = 0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
    address private weth = 0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7;

    function getTokenReserves() external view returns (uint, uint){
        address pair = UniswapV2Factory(factory).getPair(dai, weth);
        (uint reserve0, uint reserve1, ) = UniswapV2Pair(pair).getReserves();

        return (reserve0, reserve1);
    }
}

