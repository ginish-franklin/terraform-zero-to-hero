variable "ami_value" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type_value" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id_value" {
  description = "Subnet ID to launch the instance"
  type        = string
}

variable "ec2_name" {
  description = "Name tag for the ec2 instance"
  type        = string
}
