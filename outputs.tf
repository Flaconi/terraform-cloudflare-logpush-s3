output "job_id" {
  value       = cloudflare_logpush_job.this.id
  description = "The id of the created logpush job"
}
