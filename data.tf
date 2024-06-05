data "cloudflare_zone" "this" {
  name = var.domain
}

data "aws_s3_bucket_object" "challenge_file" {
  bucket = var.s3_bucket_name
  key    = cloudflare_logpush_ownership_challenge.ownership_challenge.ownership_challenge_filename
}
