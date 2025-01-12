output "bucket_name" {
  description = "Nazwa utworzonego S3 bucket"
  value       = aws_s3_bucket.example.bucket
}