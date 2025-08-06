provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami           = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"
    subnet_id = "subnet-053c34acfaeb0e55e"
    key_name = "DemoKeyPair"
    tags = {
    Name = "my_first_ec2_via_terraform"
  }
}
