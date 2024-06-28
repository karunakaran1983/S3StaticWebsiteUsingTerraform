output "karun_website" {
  value = "http://${aws_s3_bucket.karun_s3.id}.s3-website.${data.aws_region.current.name}.amazonaws.com"
}