module "bucket" {
  source = "../../modules/s3-bucket"

  bucket_name = "opentofu-lab-bucket"
  environment = "local"
}
