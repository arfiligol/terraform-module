terraform {
  cloud {
    organization = "arfiligol"

    workspaces {
      name = "dev-cxcxc-gcs-workspace-demo-ili"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5" # 或其他更高版本
    }
  }
}

# resource "google_storage_bucket" "my_bucket" {
#   name     = var.gcs_demo_bucket_name # 這裡請確保使用一個獨特的名稱
#   location = "asia-east1"           # 這是 region，GCP 的 bucket 不需要特定的 zone
#   storage_class = "STANDARD"         # 這是 Class Type，可以是 STANDARD, NEARLINE, COLDLINE, ARCHIVE

#   # 強制使用 IAM 進行存取控制
#   uniform_bucket_level_access = false
# }