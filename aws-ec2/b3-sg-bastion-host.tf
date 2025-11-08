# AWS Security Group for Public Bastion Host

module "public-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.1"

  name        = "public-bastion-sg"
  description = "Security group for public bastion host"
  vpc_id      = module.dev-vpc.vpc_id
  # Ingress rules
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]
  # Egress rules
  egress_rules = ["all-all"]
  tags         = local.common_tags

}