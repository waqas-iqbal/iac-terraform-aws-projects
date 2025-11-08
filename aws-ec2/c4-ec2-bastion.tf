# AWS EC2 Bastion Host Module

module "pub-ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.4"
  #for_each = toset (["bastion-host-1", "bastion-host-2"])
  for_each = {
    bastion-host-1 = 0
    bastion-host-2 = 1
  }
  name          = "${var.environment}-${each.key}"
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [module.public-sg.security_group_id]
  # subnet_id              = element(module.dev-vpc.public_subnets, 0)
  subnet_id = module.dev-vpc.public_subnets[each.value]
  tags = merge(local.common_tags, {
    Name = "${var.environment}-${each.key}"
  })
}