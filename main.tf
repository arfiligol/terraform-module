module "bucket" {
  source = "./bucket-module"

  bucket_name = var.bucket_name
  location    = var.location
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location
}
