resource "vault_generic_secret" "secret" {
  for_each = var.secrets
  path = "${each.key}"
  data_json = jsonencode(
    each.value
    )
}
