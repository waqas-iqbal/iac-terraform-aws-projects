# Create VPC Terraform Module
module "dev-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.5.0"

  # VPC Basic Details
  name                               = "${local.name}-${var.vpc_name}"
  cidr                               = var.vpc_cidr_block
  azs                                = var.availability_zones
  public_subnets                     = var.public_subnets
  private_subnets                    = var.private_subnets
  database_subnets                   = var.database_subnets
  create_database_subnet_group       = var.create_database_subnet_group
  create_database_subnet_route_table = var.create_database_subnet_route_table

  # NAT Gateway - Outbound Communication
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags                 = local.common_tags
  vpc_tags             = local.common_tags
  public_subnet_tags   = merge(local.common_tags, { Tier = "Public" })
  private_subnet_tags  = merge(local.common_tags, { Tier = "Private" })
  database_subnet_tags = merge(local.common_tags, { Tier = "Database" })
}