output "user_passwords" {
  description = "Map of user principal names to their initial passwords"
  sensitive   = true
  value = {
    for k, u in azuread_user.this :
    k => {
      user_principal_name = u.user_principal_name
      password            = random_password.this[k].result
    }
  }
}
