variable "bucket_name" {
  type = string
  description = "Name of the bucket"
}

resource "aws_s3_bucket" "bkt" {
  bucket = var.bucket_name
}

output "bucket_identifier" {
  value = aws_s3_bucket.bkt.id
}