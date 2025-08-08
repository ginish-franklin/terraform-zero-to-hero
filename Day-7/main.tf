provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://3.85.5.119:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "81fef3ae-5abe-201b-2499-06b8361a4d6e"
      secret_id = "eb209c21-54bc-e74d-f832-5a1b90241404"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"
  name  = "test-secret"
}

resource "aws_instance" "vault-demo" {
  ami = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"

  tags = {
    secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
