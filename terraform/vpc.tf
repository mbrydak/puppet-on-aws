module "puppet_vpc" {
  source           = "terraform-aws-modules/vpc/aws"
  version          = "3.14.2"
  name             = "puppet-vpc-${random_string.random.result}"
  cidr             = var.vpc_cidr_block
  azs              = data.aws_availability_zones.azs.names
  private_subnets  = var.private_subnet_cidr_blocks
  public_subnets   = var.public_subnet_cidr_blocks
  database_subnets = var.db_subnet_cidr_blocks

  enable_nat_gateway           = true
  enable_dns_support           = true
  enable_dns_hostnames         = true
  create_database_subnet_group = true
  single_nat_gateway           = true
  create_igw                   = true

}
