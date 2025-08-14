resource "cloudflare_logpush_ownership_challenge" "this" {
  zone_id          = local.zone_id
  destination_conf = local.destination_conf
}

resource "cloudflare_logpush_job" "this" {
  enabled                     = var.enabled
  dataset                     = var.dataset
  destination_conf            = local.destination_conf
  filter                      = var.filter != null ? jsonencode(var.filter) : null
  kind                        = var.kind
  max_upload_bytes            = var.max_upload_bytes
  max_upload_interval_seconds = var.max_upload_interval_seconds
  max_upload_records          = var.max_upload_records
  name                        = var.name
  output_options              = var.output_options != null ? var.output_options : null
  ownership_challenge         = data.aws_s3_object.this.body
  zone_id                     = local.zone_id
}
