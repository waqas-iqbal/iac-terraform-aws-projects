# Environment
environment = "Prod"
# VPC Variables
vpc_name                           = "vpc"
vpc_cidr_block                     = "10.0.0.0/16"
availability_zones                 = ["us-east-1a", "us-east-1b"]
public_subnets                     = ["10.0.21.0/24", "10.0.22.0/24"]
private_subnets                    = ["10.0.23.0/24", "10.0.24.0/24"]
database_subnets                   = ["10.0.25.0/24", "10.0.26.0/24"]
create_database_subnet_group       = true
create_database_subnet_route_table = true
enable_nat_gateway                 = true
single_nat_gateway                 = true

# EC2 Instance Variables
instance_type    = "t3.small"
instance_keypair = "DevOps"