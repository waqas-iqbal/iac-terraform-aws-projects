# Environment
environment = "Staging"
# VPC Variables
vpc_name                           = "vpc"
vpc_cidr_block                     = "10.0.0.0/16"
availability_zones                 = ["us-east-1a", "us-east-1b"]
public_subnets                     = ["10.0.11.0/24", "10.0.12.0/24"]
private_subnets                    = ["10.0.13.0/24", "10.0.14.0/24"]
database_subnets                   = ["10.0.15.0/24", "10.0.16.0/24"]
create_database_subnet_group       = true
create_database_subnet_route_table = true
enable_nat_gateway                 = true
single_nat_gateway                 = true

# EC2 Instance Variables
instance_type    = "t3.small"
key_name = "DevOps"
