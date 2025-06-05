output "bucket_name" {
  value = aws_s3_bucket.yes.bucket
}

output "uploaded_files" {
  value = {
    for file in aws_s3_object.fun :
    file.key => "s3://${aws_s3_bucket.yes.bucket}/${file.key}"
  }
}