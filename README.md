# terraform-cloudflare-logpush-s3

Template for Terraform modules

[![lint](https://github.com/flaconi/terraform-cloudflare-logpush-s3/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-cloudflare-logpush-s3/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-cloudflare-logpush-s3/workflows/test/badge.svg)](https://github.com/flaconi/terraform-cloudflare-logpush-s3/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-cloudflare-logpush-s3.svg)](https://github.com/flaconi/terraform-cloudflare-logpush-s3/releases)
[![Terraform](https://img.shields.io/badge/Terraform--registry-cloudflare--logpush--s3-brightgreen.svg)](https://registry.terraform.io/modules/flaconi/logpush-s3/cloudflare/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.8 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.8 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.8 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.8 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_domain"></a> [domain](#input\_domain)

Description: Cloudflare domain to fetch the zone id

Type: `string`

### <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name)

Description: The single, unique name of the S3 bucket for logs and for the ownership challenge file.

Type: `string`

### <a name="input_name"></a> [name](#input\_name)

Description: The name of the job to create

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_dataset"></a> [dataset](#input\_dataset)

Description: The kind of the dataset

Type: `string`

Default: `"http_requests"`

### <a name="input_s3_path"></a> [s3\_path](#input\_s3\_path)

Description: The path or prefix within the S3 bucket where logs should be stored.

Type: `string`

Default: `""`

### <a name="input_s3_region"></a> [s3\_region](#input\_s3\_region)

Description: The AWS region used for S3 mirror in case if `ownership_challenge` is provided.

Type: `string`

Default: `"eu-central-1"`

### <a name="input_enabled"></a> [enabled](#input\_enabled)

Description: Whether to enable the job

Type: `bool`

Default: `true`

### <a name="input_filter"></a> [filter](#input\_filter)

Description: Filter to include/exclude events

Type: `map(any)`

Default: `null`

### <a name="input_kind"></a> [kind](#input\_kind)

Description: The kind of job to create

Type: `string`

Default: `null`

### <a name="input_max_upload_bytes"></a> [max\_upload\_bytes](#input\_max\_upload\_bytes)

Description: The maximum uncompressed file size of a batch of logs

Type: `number`

Default: `5000000`

### <a name="input_max_upload_interval_seconds"></a> [max\_upload\_interval\_seconds](#input\_max\_upload\_interval\_seconds)

Description: The maximum interval in seconds for log batches

Type: `number`

Default: `30`

### <a name="input_max_upload_records"></a> [max\_upload\_records](#input\_max\_upload\_records)

Description: The maximum number of log lines per batch.

Type: `number`

Default: `1000`

### <a name="input_output_options"></a> [output\_options](#input\_output\_options)

Description: Configuration string for requested fields and timestamp formats

Type:

```hcl
object({
    batch_prefix     = optional(string)
    batch_suffix     = optional(string)
    cve_2021_44228   = optional(bool, false)
    field_delimiter  = optional(string)
    field_names      = optional(list(string))
    output_type      = optional(string, "ndjson")
    record_delimiter = optional(string)
    record_prefix    = optional(string)
    record_suffix    = optional(string)
    record_template  = optional(string)
    # Floating number to specify sampling rate. Sampling is applied on top of filtering, and regardless of the current sample_interval of the data
    sample_rate      = optional(number)
    timestamp_format = optional(string, "rfc3339")
  })
```

Default: `{}`

### <a name="input_ownership_challenge"></a> [ownership\_challenge](#input\_ownership\_challenge)

Description: Challenge to confirm ownership of the destination (if provided)

Type: `string`

Default: `null`

### <a name="input_sse"></a> [sse](#input\_sse)

Description: The S3 SSE algorithm used by Cloudflare Logpush.

Type: `string`

Default: `"null"`

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_job"></a> [job](#output\_job) | A created logpush job |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2025 **[Flaconi GmbH](https://github.com/flaconi)**
