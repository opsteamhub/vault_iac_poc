module "vault-secrets" {
  source      = "../modules/vault-secrets"
  secret_path = var.secret_path
  secrets     = var.secrets
}
