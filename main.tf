# Create an S3 bucket
resource "aws_s3_bucket" "karun_s3" {
  bucket = var.bucketname

  tags = {
    Name        = "Static Website"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "karun_s3_ownership" {
  bucket = aws_s3_bucket.karun_s3.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "karun_s3_public_access" {
  bucket = aws_s3_bucket.karun_s3.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "karun_s3_acl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.karun_s3_ownership,
    aws_s3_bucket_public_access_block.karun_s3_public_access,
  ]

  bucket = aws_s3_bucket.karun_s3.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.karun_s3.id
  key    = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.karun_s3.id
  key    = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.karun_s3.id
  key    = "Karun.jpg"
  source = "Karun.jpg"
  acl = "public-read"

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

resource "aws_s3_object" "project1" {
  bucket = aws_s3_bucket.karun_s3.id
  key    = "project1.jpg"
  source = "project1.jpg"
  acl = "public-read"

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

resource "aws_s3_object" "project2" {
  bucket = aws_s3_bucket.karun_s3.id
  key    = "project2.jpg"
  source = "project2.jpg"
  acl = "public-read"

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

resource "aws_s3_object" "project3" {
  bucket = aws_s3_bucket.karun_s3.id
  key    = "project3.jpg"
  source = "project3.jpg"
  acl = "public-read"

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

resource "aws_s3_bucket_website_configuration" "karun_s3_website" {
  bucket = aws_s3_bucket.karun_s3.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on = [ aws_s3_bucket_acl.karun_s3_acl ]
}

data "aws_region" "current" {}