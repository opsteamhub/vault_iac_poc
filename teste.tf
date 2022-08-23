provider "vault" {
}

module "vault_generic_secret" "example" {
  path = "secret/foo"

  data_json = jsonencode(
    {
      "pizza" = "Y2hlZXNlCg=="
    }
  )
}
