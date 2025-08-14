data "cloudflare_zones" "this" {
  name = var.domain
}

data "aws_region" "this" {}

data "aws_s3_object" "this" {
  bucket = var.s3_bucket_name
  key    = cloudflare_logpush_ownership_challenge.this.filename
}
