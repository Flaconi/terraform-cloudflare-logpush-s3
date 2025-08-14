data "cloudflare_zones" "this" {
  name = var.domain
}

data "aws_region" "this" {
  count = var.ownership_challenge == null ? 1 : 0
}

data "aws_s3_object" "this" {
  count = var.ownership_challenge == null ? 1 : 0

  bucket = var.s3_bucket_name
  key    = cloudflare_logpush_ownership_challenge.this[0].filename
}
