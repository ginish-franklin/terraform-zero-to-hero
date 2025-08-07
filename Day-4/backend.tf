terraform {
  backend "s3" {
    bucket = "terraform-day4-bucket-ginish"
    region = "us-east-1"
    key = "ginish/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}
