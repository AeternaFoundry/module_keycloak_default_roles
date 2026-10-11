resource "keycloak_default_roles" "default_roles" {
  for_each = var.default_roles

  default_roles = each.value.default_roles
  realm_id      = each.value.realm_id
}

