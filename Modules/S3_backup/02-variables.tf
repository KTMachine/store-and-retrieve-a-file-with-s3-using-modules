variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning"
  type        = bool
}

variable "files_to_upload" {
  description = "Files to upload"
  type        = map(string)
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
}