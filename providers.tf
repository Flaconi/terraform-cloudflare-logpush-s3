provider "cloudflare" {
  api_token = var.api_token
}

provider "aws" {
  region = "eu-central-1"
}
