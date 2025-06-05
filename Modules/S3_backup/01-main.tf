resource "aws_s3_bucket" "yes" {
  bucket = var.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_versioning" "no" {
  count  = var.enable_versioning ? 1 : 0
  bucket = aws_s3_bucket.yes.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_object" "fun" {
  for_each = var.files_to_upload

  bucket       = aws_s3_bucket.yes.id
  key          = each.key
  source       = each.value
  content_type = lookup(tomap({
    ".jpg"  = "image/jpeg",
    ".png"  = "image/png",
    ".pdf"  = "application/pdf"
  }), ".${split(".", each.key)[1]}", "application/octet-stream")
}