provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "day4_instance" {
  instance_type = "t2.micro"
  ami = "ami-020cba7c55df1f615"
  subnet_id = "subnet-053c34acfaeb0e55e"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-day4-bucket-ginish"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
