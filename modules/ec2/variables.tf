# variables.tf
variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
  default     = "ami-01dd6bbea8d062bf3"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to associate with the EC2 instance."
}

variable "instance_name" {
    description = "Name of the resource being created."
}

variable "firewall_group" {
    description = "Name of the firewall group being used."
    type    = set(string)
    default = []
}