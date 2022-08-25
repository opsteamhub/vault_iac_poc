secret_path = "ahaa/dev"

secrets = {
  "pizza"   = "cheese",
  "pizza2"  = "calabreza",
  "pastel"  = "palmito",
  "coxinha" = "flango",
}

# [
#   { "path":  "dev/a/db",
#       "value": {
#          host: "x",
#          user: "dbadmin",
#          pass: "xpto"
#          }
#          },
#   { "path":  "dev/b/db",
#       "value": {
#         host: "y",
#         user: "dbadmin",
#         pass: "xpto2"  }
#         }
# ]

# rm -rf .terraform/ && rm -rf .terraform.lock.hcl && terraform init && export TFVARS_FILE="../test.tfvars" && terraform apply -var-file=${TFVARS_FILE}
