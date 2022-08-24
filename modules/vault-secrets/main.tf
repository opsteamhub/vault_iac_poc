resource "vault_generic_secret" "secret" {
  path = var.secret_path
  data_json = jsonencode(var.secrets)
}
