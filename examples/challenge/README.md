# Example with challenge created in S3-bucket

Terraform should have provider configured with access to S3-bucket to fetch content of challenge file.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.8 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.8 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_example"></a> [example](#module\_example) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | Cloudflare API token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_job"></a> [job](#output\_job) | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2025 **[Flaconi GmbH](https://github.com/flaconi)**
