resource "random_password" "this" {
  for_each    = var.users
  length      = 32
  special     = true
  min_lower   = 1
  min_numeric = 1
  min_special = 1
  min_upper   = 1
}
resource "azuread_user" "this" {
  for_each              = var.users
  display_name          = each.value.display_name
  user_principal_name   = each.value.user_principal_name
  password              = random_password.this[each.key].result
  force_password_change = true
}
