contract C {
    uint x;
    function setX(uint y) public {
        x = y;
    }
    function resetX() public {
        x = 0;
    }
    function readX() public view returns(uint) {
        return x;
    }
}
// ====
// optimize: true
// optimize-yul: true
// ----
// creation:
//   codeDepositCost: 26200
//   executionCost: 79
//   totalCost: 26279
// external:
//   readX(): 2288
//   resetX(): 5114
//   setX(uint256): 22309
