# AWS EC2 Instance Private Hosts Module     

module "ec2-instance" {
  depends_on = [module.dev-vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "6.1.4"
  for_each = {
    private-ec2-1 = 0
    private-ec2-2 = 1
  }

  name          = "${var.environment}-${each.key}"
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [module.private-sg.security_group_id]
  subnet_id              = module.dev-vpc.private_subnets[each.value]
  user_data              = file("app-install.sh")
  tags                   = local.common_tags
}   