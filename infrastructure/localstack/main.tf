module "bucket" {
  source = "../../modules/s3-bucket"

  bucket_name = "opentofu-lab-bucket"
  environment = "local"
}

module "network" {
  source = "../../modules/vpc"

  name              = "opentofu-lab-vpc"
  cidr_block        = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
  availability_zone = "eu-north-1a"
  environment       = "local"
}
