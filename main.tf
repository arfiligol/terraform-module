provider "google" {
  project = "astute-city-391210"
  region  = "asia-east1"


}

resource "google_storage_bucket" "default" {
  name          = "ili-terraform-created-bucket"
  force_destroy = false
  location      = "asia-east1"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

