resource "cloudflare_logpush_ownership_challenge" "this" {
  zone_id          = local.zone_id
  destination_conf = var.s3_bucket_conf
}

resource "cloudflare_logpush_job" "this" {
  depends_on                  = [cloudflare_logpush_ownership_challenge.this]
  enabled                     = var.enabled
  dataset                     = var.dataset
  destination_conf            = cloudflare_logpush_ownership_challenge.this.destination_conf
  filter                      = length(var.filter) > 0 ? jsonencode(var.filter) : null
  kind                        = var.kind
  max_upload_bytes            = var.max_upload_bytes
  max_upload_interval_seconds = var.max_upload_interval_seconds
  max_upload_records          = var.max_upload_records
  name                        = var.name
  output_options              = var.output_options != null ? var.output_options : null
  ownership_challenge         = var.ownership_challenge
  zone_id                     = local.zone_id
}
