module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name           = var.vpc_name
  cidr           = var.vpc_cidr_block
  azs            = var.vpc_availability_zones
  public_subnets = var.vpc_public_subnets


  tags = {
    Department = "IT"

  }
  vpc_tags = {

    VPC_Region = var.aws_region
  }
  public_subnet_tags = {
    Subnet_Type = "Public Subnets"
  }
}
