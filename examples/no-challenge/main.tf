variable "token" {
  description = "Cloudflare API token"
  type        = string
}

provider "cloudflare" {
  api_token = var.token
}

# This will create only job. Ownership challenge is created elsewhere
module "example" {
  source = "../../"

  enabled = false
  name    = "example-job"
  domain  = "example.com"
  dataset = "http_requests"

  s3_bucket_name = "your-s3-bucket-for-logs"
  s3_path        = "example.com/{DATE}"
  s3_region      = "us-east-1"
  output_options = {
    field_names = [
      "RayID",
      "ClientIP",
      "ClientRequestHost",
      "ClientRequestMethod",
      "ClientRequestURI",
      "EdgeResponseStatus",
      "EdgeResponseBytes",
      "EdgeStartTimestamp",
      "EdgeEndTimestamp"
    ]
  }

  ownership_challenge = "0000000000000000000000000000"
}

output "id" {
  value = module.example.job_id
}
