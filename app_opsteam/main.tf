module "vault-secrets-engine" {
  source = "../modules/vault-secrets-engine"

  path = var.engine_path
  type = var.engine_type
  options = {
    version = var.engine_api_version
  }
  description = var.engine_description
}

module "vault-secrets" {
  source      = "../modules/vault-secrets"
  secrets     = var.secrets
  depends_on = [module.vault-secrets-engine]
}
