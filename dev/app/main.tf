terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
}

module "bt_app_01" {
  source         = "../../modules/ec2"
  ami_id         = "ami-04708942c263d8190"  
  instance_type  = "t2.micro"      
  key_name       = "key-value"
  firewall_group = ["SSH GROUP"] 
  hostname       = "binnie"
  device_name    = "Testing"

}

#output
output "bt_app_01" {
  value = {
    instance_id   = module.bt_app_01.instance_id
    public_ip     = module.bt_app_01.public_ip
    private_ip    = module.bt_app_01.private_ip
  }
}