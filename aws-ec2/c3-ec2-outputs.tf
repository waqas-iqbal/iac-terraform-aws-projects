# AWS EC2 Instance Outputs

output "bastion_public_ips" {
  description = "Public IPs of the Bastion Hosts"
  value       = { for k, inst in module.pub-ec2-instance : k => inst.public_ip }
}


output "bastion_instance_ids" {
  description = "Instance IDs of the Bastion Hosts"
  value       = { for k, inst in module.pub-ec2-instance : k => inst.id }
}

output "private_ec2_private_ips" {
  description = "Private IPs of the Private EC2 Instances"
  value       = { for k, inst in module.ec2-instance : k => inst.private_ip }
}

output "private_ec2_instance_ids" {
  description = "Instance IDs of the Private EC2 Instances"
  value       = { for k, inst in module.ec2-instance : k => inst.id }
}


