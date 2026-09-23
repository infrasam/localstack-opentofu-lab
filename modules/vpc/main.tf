resource "aws_vpc" "this" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {

    Name        = var.name
    Project     = "localstack-opentofu-lab"
    Environment = var.environment
    ManagedBy   = "opentofu"
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.name}-public-subnet"
    Project     = "localstack-opentofu-lab"
    Environment = var.environment
    ManagedBy   = "opentofu"
  }
}
