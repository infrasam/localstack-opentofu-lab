output "artifact_bucket_name" {
  description = "localstack-s3-bucket"
  value       = aws_s3_bucket.artifacts.bucket
}

