variable "api_token" {
  description = "The Cloudflare API token."
  type        = string
  sensitive   = true
}

variable "job_name" {
  description = "The name of the job to create"
  type        = string
}

variable "domain" {
  description = "Cloudflare domain to fetch the zone id"
  type        = string
}

variable "dataset" {
  description = "The kind of the dataset"
  type        = string
  default     = "http_requests"
}

variable "enabled" {
  description = "Whether to enable the job"
  type        = bool
  default     = true
}

variable "filter" {
  description = "Filter to include/exclude events"
  type        = map(any)
  default     = {}
}

variable "frequency" {
  description = "Frequency of logs being pushed"
  type        = string
  default     = "high"
}

variable "kind" {
  description = "The kind of job to create"
  type        = string
  default     = ""
}

variable "logpull_options" {
  description = "Configuration string for requested fields and timestamp formats"
  type        = string
}

variable "s3_bucket_conf" {
  description = "Uniquely identifies a resource (such as an s3 bucket) where data will be pushed"
  type        = string
}

variable "ownership_challenge" {
  description = "Challenge to confirm ownership of the destination"
  type        = string
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
