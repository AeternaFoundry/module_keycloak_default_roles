variable "default_roles" {
  description = <<EOT
Map of default_roles, attributes below
Required:
    - default_roles
    - realm_id
EOT

  type = map(object({
    default_roles = set(string)
    realm_id      = string
  }))
}

