variable "domain" {
  description = "Cloudflare domain to fetch the zone id"
  type        = string
}

variable "dataset" {
  description = "The kind of the dataset"
  type        = string
  default     = "http_requests"
}

variable "s3_bucket_name" {
  description = "The single, unique name of the S3 bucket for logs and for the ownership challenge file."
  type        = string
}

variable "s3_path" {
  description = "The path or prefix within the S3 bucket where logs should be stored."
  type        = string
  default     = ""
}

variable "s3_region" {
  description = "The AWS region used for S3 mirror in case if `ownership_challenge` is provided."
  type        = string
  default     = "eu-central-1"
}

variable "enabled" {
  description = "Whether to enable the job"
  type        = bool
  default     = true
}

# https://developers.cloudflare.com/logs/logpush/logpush-job/filters/
variable "filter" {
  description = "Filter to include/exclude events"
  type        = map(any)
  default     = null
}

variable "kind" {
  description = "The kind of job to create"
  type        = string
  default     = null
}

variable "max_upload_bytes" {
  description = "The maximum uncompressed file size of a batch of logs"
  type        = number
  default     = 5000000
}

variable "max_upload_interval_seconds" {
  description = "The maximum interval in seconds for log batches"
  type        = number
  default     = 30
}

variable "max_upload_records" {
  description = "The maximum number of log lines per batch."
  type        = number
  default     = 1000
}

variable "name" {
  description = "The name of the job to create"
  type        = string
}

variable "output_options" {
  description = "Configuration string for requested fields and timestamp formats"
  type = object({
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
  default = {}
}

variable "ownership_challenge" {
  description = "Challenge to confirm ownership of the destination (if provided)"
  type        = string
  default     = null
}

variable "sse" {
  type        = string
  default     = "AES256"
  description = "The S3 SSE algorithm used by Cloudflare Logpush."
}
