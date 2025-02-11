# terraform-module-template
Template for Terraform modules

<!-- Uncomment and replace with your module name
[![lint](https://github.com/flaconi/<MODULENAME>/workflows/lint/badge.svg)](https://github.com/flaconi/<MODULENAME>/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/<MODULENAME>/workflows/test/badge.svg)](https://github.com/flaconi/<MODULENAME>/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/<MODULENAME>.svg)](https://github.com/flaconi/<MODULENAME>/releases)
-->
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

For requirements regarding module structure: [style-guide-terraform.md](https://github.com/Flaconi/devops-docs/blob/master/doc/conventions/style-guide-terraform.md)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.52.0 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | 4.52.0 |

<!-- TFDOCS_REQUIREMENTS_END -->

<!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_api_token"></a> [api\_token](#input\_api\_token)

Description: The Cloudflare API token.

Type: `string`

### <a name="input_job_name"></a> [job\_name](#input\_job\_name)

Description: The name of the job to create

Type: `string`

### <a name="input_domain"></a> [domain](#input\_domain)

Description: Cloudflare domain to fetch the zone id

Type: `string`

### <a name="input_logpull_options"></a> [logpull\_options](#input\_logpull\_options)

Description: Configuration string for requested fields and timestamp formats

Type: `string`

### <a name="input_s3_bucket_conf"></a> [s3\_bucket\_conf](#input\_s3\_bucket\_conf)

Description: Uniquely identifies a resource (such as an s3 bucket) where data will be pushed

Type: `string`

### <a name="input_ownership_challenge"></a> [ownership\_challenge](#input\_ownership\_challenge)

Description: Challenge to confirm ownership of the destination

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_dataset"></a> [dataset](#input\_dataset)

Description: The kind of the dataset

Type: `string`

Default: `"http_requests"`

### <a name="input_enabled"></a> [enabled](#input\_enabled)

Description: Whether to enable the job

Type: `bool`

Default: `true`

### <a name="input_filter"></a> [filter](#input\_filter)

Description: Filter to include/exclude events

Type: `map(any)`

Default: `{}`

### <a name="input_frequency"></a> [frequency](#input\_frequency)

Description: Frequency of logs being pushed

Type: `string`

Default: `"high"`

### <a name="input_kind"></a> [kind](#input\_kind)

Description: The kind of job to create

Type: `string`

Default: `""`

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

<!-- TFDOCS_INPUTS_END -->

<!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_logpush_job_id"></a> [logpush\_job\_id](#output\_logpush\_job\_id) | The id of the created logpush job |

<!-- TFDOCS_OUTPUTS_END -->

## License

**[MIT License](LICENSE)**

Copyright (c) 2023 **[Flaconi GmbH](https://github.com/flaconi)**
