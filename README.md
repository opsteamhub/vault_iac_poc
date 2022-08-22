# vault_iac_poc
To try new Terraform module to create/update secrets at Vault

## How to test locally

To try Keycloak out, just execute:

```sh
docker-compose -f vault.yml up -d
```

To delete all the create resources, just execute:

```sh
docker-compose -f vault.yml down --remove-orphans
```
