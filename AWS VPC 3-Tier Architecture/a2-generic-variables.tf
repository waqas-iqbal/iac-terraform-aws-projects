# Generic Variables for Terraform Configuration

# AWS Region Variable
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# Environment Variable
variable "environment" {
  description = "The environment for resource deployment"
  type        = string
  default     = "dev"
}

# Business Unit Variable
variable "business_unit" {
  description = "The business unit responsible for the resources"
  type        = string
  default     = "infra"
}
