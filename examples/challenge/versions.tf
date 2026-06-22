terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.51"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.21"
    }
  }
  required_version = "~> 1.3"
}
