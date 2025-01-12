terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "us-east-1" # Możesz zmienić region
}

resource "aws_s3_bucket" "example" {
  bucket = "example-terraform-bucket"
  acl    = "private"

  tags = {
    Name        = "ExampleBucket"
    Environment = "Dev"
  }
}