module "s3_backup" {
  source          = "./modules/s3_backup"
  bucket_name     = var.bucket_name
  enable_versioning = var.enable_versioning
  files_to_upload = var.files_to_upload
  tags            = var.tags
}