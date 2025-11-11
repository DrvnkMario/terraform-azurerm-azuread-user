# Changelog

All notable changes to this project will be documented in this file.

## [v0.1.0] - 2025-11-11
### Added
- Initial release of the `terraform-azurerm-azuread-user` module.
- Supports creating Azure Entra ID (Azure AD) users using a map of users.
- Automatically generates a random password for each user with:
  - 32 characters
  - At least 1 lowercase, 1 uppercase, 1 numeric, and 1 special character
- Outputs a sensitive map `user_passwords` containing:
  - `user_principal_name`
  - `password`
- Accepts `users` input variable as a map of objects containing:
  - `user_principal_name` (string)
  - `display_name` (string)
- Requires Terraform providers:
  - `azurerm` ~> 4.52.0
  - `random` ~> 3.7.2
