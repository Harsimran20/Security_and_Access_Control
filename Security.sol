pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract SecureAccessControl is AccessControl {
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant MODERATOR_ROLE = keccak256("MODERATOR_ROLE");

    uint256 private secretValue;

    constructor(address admin) {
        _grantRole(DEFAULT_ADMIN_ROLE, admin); // ✅ FIXED: replaced deprecated _setupRole
        _grantRole(ADMIN_ROLE, admin);         // ✅ FIXED: replaced deprecated _setupRole
    }

    function setSecret(uint256 value) public onlyRole(ADMIN_ROLE) {
        secretValue = value;
    }

    function viewSecret() public view onlyRole(MODERATOR_ROLE) returns (uint256) {
        return secretValue;
    }

    function grantModerator(address account) public onlyRole(ADMIN_ROLE) {
        grantRole(MODERATOR_ROLE, account);
    }
}

