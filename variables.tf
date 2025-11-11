variable "users" {
  type = map(object({
    user_principal_name = string
    display_name        = string
  }))
  description = "Map of users to create."
  default     = {}
}
