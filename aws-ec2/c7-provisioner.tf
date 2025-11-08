resource "null_resource" "copy_key_to_bastions" {
  for_each   = module.pub-ec2-instance
  depends_on = [module.pub-ec2-instance]

  connection {
    type        = "ssh"
    host        = each.value.public_ip
    user        = "ec2-user"
    private_key = file(var.private_key_path)
  }

  # Step 1: Upload the key file to the home directory (you own this)
  provisioner "file" {
    source      = var.private_key_path
    destination = "/home/ec2-user/DevOps.pem"
  }

  # Step 2: Move it with sudo and fix permissions
  provisioner "remote-exec" {
    inline = [
      "sudo mv /home/ec2-user/DevOps.pem /tmp/DevOps.pem",
      "sudo chmod 400 /tmp/DevOps.pem"
    ]
  }
}
