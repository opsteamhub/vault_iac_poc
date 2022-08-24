resource "vault_generic_secret" "secret" {
  path      = "secret/${var.secret_path}"
  data_json = jsonencode(var.secrets)
}
