output "website_url" {
  description = "S3 Static Website URL"
  value       = "http://${aws_s3_bucket_website_configuration.website.website_endpoint}"
}
