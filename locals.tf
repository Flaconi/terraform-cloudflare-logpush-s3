locals {
  zone_id = lookup(data.cloudflare_zones.this.result[0], "id")

  destination_conf = "s3://${var.s3_bucket_name}/${var.s3_path}?region=${data.aws_region.this.region}"
}
