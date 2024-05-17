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

module "example_instance" {
  source         = "../../modules/ec2"
  ami_id         = "ami-04708942c263d8190"  
  instance_type  = "t2.micro"      
  key_name       = "key-value"
  firewall_group = ["SSH GROUP"] 
  instance_name = "binnie"

}

output "example_instance" {
  value = {
    instance_id   = module.example_instance.instance_id
    public_ip     = module.example_instance.public_ip
    private_ip    = module.example_instance.private_ip
  }
}