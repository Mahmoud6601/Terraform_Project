resource "aws_s3_bucket" "this" {
  bucket = var.bucket
  acl    = var.acl

  versioning {
    enabled = true
  }
}
