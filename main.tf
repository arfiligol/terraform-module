provider "google" {
  project = var.projectID
  region  = var.projectRegion


}

resource "google_storage_bucket" "default" {
  name          = var.bucket_name
  force_destroy = false
  location      = var.bucket_location
  storage_class = var.bucket_storage_class
  versioning {
    enabled = true
  }
}

