output "bucket_name" {
  description = "Created bucket name"
  value       = module.s3_backup.bucket_name
}

output "uploaded_files" {
  description = "Details of uploaded files"
  value       = module.s3_backup.uploaded_files
}