secret_path = "prod"

secrets = {
  "canelone" = "cheese",
  "calzone"  = "calabreza",
  "pastel"   = "palmito",
  "quibe"    = "carne",
}

# rm -rf .terraform/ && rm -rf .terraform.lock.hcl && terraform init && export TFVARS_FILE="prod.tfvars" && terraform apply -var-file=${TFVARS_FILE}
