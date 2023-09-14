variable "gcp_project_id" {
  description = "The project ID to deploy resources to in GCP."
  type        = string
}

variable "gcs_demo_bucket_name" {
    description = "The bucket name you want to create."
    type        = string
}