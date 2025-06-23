terraform {
  backend "s3" {
    bucket         = "allan-s3-7787"
    key            = "allan/terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

