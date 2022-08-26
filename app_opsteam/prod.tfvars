engine_path = "prod"

secret_path = "k8s"

secrets = {
  "pizza"   = "cheese",
  "pizza2"  = "calabreza",
  "pastel"  = "palmito",
  "coxinha" = "flango",
}

# rm -rf .terraform/ && rm -rf .terraform.lock.hcl && terraform init && export TFVARS_FILE="dev.tfvars" && terraform apply -var-file=${TFVARS_FILE}
