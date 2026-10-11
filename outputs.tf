output "default_roles_id" {
  description = "Map of id values across all default_roles, keyed the same as var.default_roles except keys with no id are omitted"
  value       = { for k, v in keycloak_default_roles.default_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "default_roles_default_roles" {
  description = "Map of default_roles values across all default_roles, keyed the same as var.default_roles except keys with no default_roles are omitted"
  value       = { for k, v in keycloak_default_roles.default_roles : k => v.default_roles if v.default_roles != null && length(v.default_roles) > 0 }
}
output "default_roles_realm_id" {
  description = "Map of realm_id values across all default_roles, keyed the same as var.default_roles except keys with no realm_id are omitted"
  value       = { for k, v in keycloak_default_roles.default_roles : k => v.realm_id if v.realm_id != null && length(v.realm_id) > 0 }
}

