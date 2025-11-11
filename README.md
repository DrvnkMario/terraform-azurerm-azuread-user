# terraform-azurerm-azuread-user

A Terraform module for managing Azure Entra ID (Azure AD) users.

## Usage

```hcl
module "example" {
    source = "git::https://github.com/your-org/terraform-azurerm-azuread-user.git"
    users = {
    jkowalski = {
      user_principal_name = "jkowalski@example.com"
      display_name        = "Jan Kowalski"
    }}
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.52.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.7.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.7.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_user.this](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/user) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_users"></a> [users](#input\_users) | Map of users to create. | <pre>map(object({<br/>    user_principal_name = string<br/>    display_name        = string<br/>  }))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_passwords"></a> [user\_passwords](#output\_user\_passwords) | Map of user principal names to their initial passwords |
<!-- END_TF_DOCS -->
