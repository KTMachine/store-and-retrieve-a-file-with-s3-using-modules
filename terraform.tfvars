bucket_name     = "teh-sexay-backup-buck"
enable_versioning = false
tags = {
  Environment = "Dev"
  Project     = "Backups"
}

files_to_upload = {
  "images/example.png" = "./local-files/example.png"
  # "docs/notes.pdf"    = "./local-files/notes.pdf"
}

aws_region = "us-east-1"