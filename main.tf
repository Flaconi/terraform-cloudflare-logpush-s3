resource "cloudflare_logpush_ownership_challenge" "ownership_challenge" {
  zone_id          = local.zone_id
  destination_conf = var.s3_bucket_conf
}

resource "cloudflare_logpush_job" "this" {
  depends_on                  = [cloudflare_logpush_ownership_challenge.ownership_challenge]
  enabled                     = var.enabled
  dataset                     = var.dataset
  destination_conf            = cloudflare_logpush_ownership_challenge.ownership_challenge.destination_conf
  filter                      = length(var.filter) > 0 ? jsonencode(var.filter) : null
  kind                        = var.kind
  logpull_options             = var.logpull_options
  max_upload_bytes            = var.max_upload_bytes
  max_upload_interval_seconds = var.max_upload_interval_seconds
  max_upload_records          = var.max_upload_records
  name                        = var.job_name
  ownership_challenge         = var.ownership_challenge
  zone_id                     = local.zone_id
}
