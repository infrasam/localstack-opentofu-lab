output "bucket_name" {
  description = "The name of the S3 bucket."
  value       = module.bucket.bucket_name
}

output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "The ID of the public subnet."
  value       = module.network.public_subnet_id
}
