path = "dev"
type = "kv"
options = {
  version = 2
}
description = "Key/Value Storage"

# rm -rf .terraform/ && rm -rf .terraform.lock.hcl && terraform init && export TFVARS_FILE="../test-vault-secrets-engine.tfvars" && terraform apply -var-file=${TFVARS_FILE}
# rm -rf terraform.tfstate terraform.tfstate.backup
