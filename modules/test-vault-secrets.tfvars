secrets = {
  "dev/test" = {
    "pizza" = "cheese",
    "pizza2"  = "calabreza",
    "pastel"  = "palmito",
    "coxinha" = "flango",
  }
  "dev/k8s" = {
    "pizza" = "cheese",
    "pizza2"  = "calabreza",
    "pastel"  = "palmito",
    "coxinha" = "flango",
  }
}

# rm -rf .terraform/ && rm -rf .terraform.lock.hcl && terraform init && export TFVARS_FILE="../test-vault-secrets.tfvars" && terraform apply -var-file=${TFVARS_FILE}
