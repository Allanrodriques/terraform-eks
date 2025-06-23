provider "aws" {
    region = "eu-north-1"
}


resource "aws_s3_bucket" "Allan_s3_bucket" {
    bucket = "allan-s3-77876"
    tags = {
        Name = "allan S3 state file bucket"
    }
}


resource "aws_dynamodb_table" "terraform_lock" {
    name         = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }

    tags = {
        Name = "Terraform Lock Table"
    }
}