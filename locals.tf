locals {
  zone_id = lookup(data.cloudflare_zones.this.result[0], "id")
}
