// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";


contract ShambaSmart is ERC20, Ownable, ERC20Permit, ERC20Votes {
    constructor(address initialOwner)
        ERC20("ShambaSmart", "SS")
        Ownable()
        ERC20Permit("ShambaSmart")
    {
        transferOwnership(initialOwner);
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Override _afterTokenTransfer from ERC20Votes
    function _afterTokenTransfer(address from, address to, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    // Override _burn from ERC20
    function _burn(address account, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._burn(account, amount);
    }

    // Override _mint from ERC20
    function _mint(address account, uint256 amount) internal override(ERC20, ERC20Votes) {
        super._mint(account, amount);
    }
}

contract LandContract {
    struct Land {
        uint titleNumber;
        uint estimateSize;
        string mapSheetNumber;
        string nameOfOwner;
        uint nationalID;
        string seal;
        uint dateOfIssue;
    }

    mapping(uint => Land) public lands;

    function setLandInfo(uint _titleNumber, uint _estimateSize, string memory _mapSheetNumber, string memory _nameOfOwner, uint _nationalID, string memory _seal, uint _dateOfIssue) public {
        lands[_titleNumber] = Land(_titleNumber, _estimateSize, _mapSheetNumber, _nameOfOwner, _nationalID, _seal, _dateOfIssue);
    }

    function getLandInfo(uint _titleNumber) public view returns (uint, uint, string memory, string memory, uint, string memory, uint) {
        Land memory land = lands[_titleNumber];
        return (land.titleNumber, land.estimateSize, land.mapSheetNumber, land.nameOfOwner, land.nationalID, land.seal, land.dateOfIssue);
    }
}
