terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
  provider "aws" {
  region  = "ap-south-1"
}
  resource "aws_instance" "ec2_variable" {
    ami               = "ami-006d3995d3a6b963b"
    instance_type     = "t2.micro"
    vpc_security_group_ids = ["sg-004a0938e041c4e1d"]
    availability_zone = "ap-south-1a"
    user_data         = file("docker.sh")
    key_name          = "ansi-key"
    tags              = {
      Name = "Docker Container"
    }
  }
output "instance_ip_addr" {
  value = aws_instance.ec2_variable.public_ip
}

