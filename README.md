# SecureAccessControl

A secure, role-based access control smart contract built with Solidity and OpenZeppelin’s AccessControl framework.

## 🚀 Features

- **Admin Role:** Can assign moderators and update secret values.
- **Moderator Role:** Can view the stored secret value.
- Uses OpenZeppelin's `AccessControl` for secure role management.
- Designed for Ethereum-compatible blockchains.

## 🔒 Roles

- `DEFAULT_ADMIN_ROLE`: Root authority (usually the contract deployer).
- `ADMIN_ROLE`: Can assign moderators and update the secret.
- `MODERATOR_ROLE`: Can view the secret.
