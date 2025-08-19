variable "token" {
  description = "Cloudflare API token"
  type        = string
}

provider "cloudflare" {
  api_token = var.token
}

provider "aws" {
  region = "us-east-1"
}

# This will create only job. Ownership challenge is created elsewhere
module "example" {
  source = "../../"

  enabled = true
  name    = "example-job"
  domain  = "example.com"
  dataset = "http_requests"

  s3_bucket_name = "your-s3-bucket-for-logs"
  s3_path        = "example.com/{DATE}"
  output_options = {
    cve_2021_44228 = true
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
    sample_rate = 1
  }
}

output "job" {
  value = module.example.job
}
