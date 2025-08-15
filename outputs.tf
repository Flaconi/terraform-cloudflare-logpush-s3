output "job" {
  description = "A created logpush job"
  value       = { for k, v in cloudflare_logpush_job.this : k => v if k != "ownership_challenge" }
}
