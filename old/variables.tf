variable "projectID" {
    description = "The ID of Project"
    type        = string
}

variable "projectRegion" {
    description = "The region of Project"
    type        = string
}

variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "bucket_location" {
  description = "The location of the bucket"
  type        = string
  default     = "asia-east1"
}

variable "bucket_storage_class" {
  description = "The storage class of the bucket"
  type        = string
  default     = "STANDARD"
}