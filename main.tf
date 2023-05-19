terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAXVC3HURVCHMV6FMP"
  secret_key = "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"

}

resource "aws_instance" "demo" {
  ami           = "ami-0b08bfc6ff7069aff"
  instance_type = "t2.micro"

}

