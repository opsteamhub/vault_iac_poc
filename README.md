# vault_iac_poc

To try new Terraform module to create/update secrets at Vault

## How to test locally

To try Vault out, just execute:

```sh
docker-compose -f vault.yml up -d && \
export VAULT_ADDR="http://127.0.0.1:8200" && \
export VAULT_TOKEN="environment"
```

To delete all the create resources, just execute:

```sh
docker-compose -f vault.yml down --remove-orphans
```
