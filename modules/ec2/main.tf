# main.tf
resource "aws_instance" "instance" {
  ami                       = var.ami_id
  instance_type             = var.instance_type
  key_name                  = var.key_name
  security_groups           = var.firewall_group
  tags          = {
    instance_name = var.hostname
    Name = var.device_name
  }
}
