provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "This is the value of the AMI"
}

variable "instance_type" {
  description = "This is the value of the Instance Type"
}

resource "aws_instance" "demoinstance" {
  ami = var.ami
  instance_type = var.instance_type
}
