resource "aws_eip" "bastion_eip" {
  depends_on = [module.pub-ec2-instance, module.dev-vpc]
  for_each   = module.pub-ec2-instance
  instance   = each.value.id
  domain     = "vpc"
  tags = merge(local.common_tags, {
    Name = "${var.environment}-eip-${each.key}"
  })

  provisioner "local-exec" {
    command = "echo \"AlDestroy time prov $(date)\" >> infra_destroy.log"
    when    = destroy
  }

  provisioner "local-exec" {
    command = "echo \"All Created time prov $(date)\" >> infra_create.log"
    when    = create
  }
}