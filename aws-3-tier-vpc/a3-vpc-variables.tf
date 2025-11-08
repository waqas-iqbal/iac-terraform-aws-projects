# VPC Input Variables for Terraform Configuration

# VPC Name Variable
variable "vpc_name" {
  description = "The name of the VPC to be created"
  type        = string
  default     = "vpc"
}

# VPC CIDR Block Variable
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Availability Zones Variable
variable "availability_zones" {
  description = "List of availability zones for the VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# Public Subnets Variable
variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Private Subnets Variable
variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

# Database Subnets Variable
variable "database_subnets" {
  description = "List of database subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.5.0/24", "10.0.6.0/24"]
}

# Enable NAT Gateway Variable
variable "enable_nat_gateway" {
  description = "Flag to enable NAT Gateway for outbound communication"
  type        = bool
  default     = true
}

# Single NAT Gateway Variable
variable "single_nat_gateway" {
  description = "Flag to create a single NAT Gateway"
  type        = bool
  default     = true
}

# Create Database Subnet Group Variable
variable "create_database_subnet_group" {
  description = "Flag to create a database subnet group"
  type        = bool
  default     = true
}

# Create Database Subnet Route Table Variable
variable "create_database_subnet_route_table" {
  description = "Flag to create a database subnet route table"
  type        = bool
  default     = true
}

# Tags Variable
variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default = {
    Owner       = "devops-team"
    Environment = "dev"
  }
}
