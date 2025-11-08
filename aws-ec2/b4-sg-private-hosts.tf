# AWS Security Group for Private EC2 Hosts

module "private-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.1"

  name        = "private-sg"
  description = "Security group for Private EC2 host"
  vpc_id      = module.dev-vpc.vpc_id
  # Ingress rules
  ingress_cidr_blocks = module.dev-vpc.public_subnets_cidr_blocks
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  # Egress rules
  egress_rules = ["all-all"]
  tags         = local.common_tags

}