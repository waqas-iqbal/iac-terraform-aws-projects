# AWS EC2 Instance Variables

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

# AWS EC2 Key Pair Name
variable "key_name" {
  description = "Key pair name for EC2 instances"
  type        = string
  default     = "DevOps"
}

# Path to Private Key File
variable "private_key_path" {
  description = "Path to the private key file for SSH access"
  type        = string
  default     = "/home/ec2-user/private_key/DevOps.pem"
}

