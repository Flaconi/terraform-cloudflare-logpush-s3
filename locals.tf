locals {
  zone_id = lookup(data.cloudflare_zones.this.result[0], "id")

  aws_region       = var.ownership_challenge == null ? data.aws_region.this[0].region : var.s3_region
  destination_conf = "s3://${var.s3_bucket_name}/${var.s3_path}?region=${local.aws_region}&sse=${var.sse}"

  output_options = { for key, option in var.output_options : key => option if option != null }
}
