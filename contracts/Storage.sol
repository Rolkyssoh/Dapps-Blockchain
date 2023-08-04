//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 < 0.9.0;

contract Storage {

    //keccak256(key . slot)
    mapping(uint => uint) public aa; // slot 0
    mapping(address => uint) public bb; // slot 1

    // keccak256(slot) + index of the item
    uint[] public cc; // slot 2

    uint8 public a = 7; // 1 byte
    uint16 public b = 10; // 2 bytes
    address public c = 0xf75cc8AbaDd67fEB8c2d59E7Aa2F53d3BB0fE6C9; // 20 bytes
    bool d = true; // 1 byte
    uint64 public e = 15; // 8 bytes
    // 32 bytes, all values will be stored in slot 3
    //0x 0f 01 f75cc8abadd67feb8c2d59e7aa2f53d3bb0fe6c9 000a 07

    uint256 public f = 200; // 32 bytes -> slot 4

    uint8 public g = 40; // 1 byte -> slot 5

    uint256 public h =789; // 32 bytes -> slot 6

    constructor(){
        cc.push(1); //0
        cc.push(10); //1
        cc.push(100); //2

        aa[2]=4;
        aa[3]=10;
        bb[0x9bD98b23F941d181e2bC01Ffa1C84A18338DCA80]=100;
    }

}

//  aa[2]=4 => 0x00000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000
// aa[3]=10 => 0x00000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000000
// bb[0x9bD98b23F941d181e2bC01Ffa1C84A18338DCA80]=100 => 0x0000000000000000000000009bD98b23F941d181e2bC01Ffa1C84A18338DCA800000000000000000000000000000000000000000000000000000000000000001

//0000000000000000000000000000000000000000000000000000000000000002
//29102676481673041902632991033461445430619272659676223336789171408008386403024