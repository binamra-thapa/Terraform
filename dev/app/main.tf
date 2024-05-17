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

resource "aws_instance" "example" {
  ami           = "ami-04708942c263d8190" # Rhel-9 x86_64
  instance_type = "t2.micro"
  key_name      = "key-value"
}