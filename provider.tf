provider "google" {
  credentials = var.GCP_Storage_Admin_SA
  project     = var.gcp_project_id
  region      = "asia-east1"
  zone        = "asia-east1-b"
}