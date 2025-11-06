# Define Local Values in Terraform Configuration

locals {
  owners      = var.business_unit
  environment = var.environment
  name        = "${var.business_unit}-${var.environment}"
  common_tags = {
    Owner       = local.owners
    Environment = local.environment
  }
}