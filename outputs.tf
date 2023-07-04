output "bucket_name" {
  value       = google_storage_bucket.my_bucket.name
  description = "The name of the created bucket"
}

output "bucket_url" {
  value       = "gs://${google_storage_bucket.my_bucket.name}"
  description = "The URL of the created bucket"
}