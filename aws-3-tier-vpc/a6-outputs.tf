# VPC Output Values

# Output VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.dev-vpc.vpc_id
}

# Output Public Subnet IDs
output "public_subnet_ids" {
  description = "List of Public Subnet IDs"
  value       = module.dev-vpc.public_subnets
}

# Output Private Subnet IDs
output "private_subnet_ids" {
  description = "List of Private Subnet IDs"
  value       = module.dev-vpc.private_subnets
}

# Output Database Subnet IDs
output "database_subnet_ids" {
  description = "List of Database Subnet IDs"
  value       = module.dev-vpc.database_subnets
}

# Output VPC CIDR Block
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.dev-vpc.vpc_cidr_block
}


