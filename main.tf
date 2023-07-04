module "bucket" {
  source = "./bucket-module"

  bucket_name = var.bucket_name
  location    = var.location
}
