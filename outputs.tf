output "default_roles_id" {
  description = "Map of id values across all default_roles, keyed the same as var.default_roles"
  value       = { for k, v in keycloak_default_roles.default_roles : k => v.id }
}
output "default_roles_default_roles" {
  description = "Map of default_roles values across all default_roles, keyed the same as var.default_roles"
  value       = { for k, v in keycloak_default_roles.default_roles : k => v.default_roles }
}
output "default_roles_realm_id" {
  description = "Map of realm_id values across all default_roles, keyed the same as var.default_roles"
  value       = { for k, v in keycloak_default_roles.default_roles : k => v.realm_id }
}

