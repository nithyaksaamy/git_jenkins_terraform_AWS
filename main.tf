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
  region     = "us-east-1"
  access_key = "AKIAXVC3HURVDT2H6M5L"
  secret_key = "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"

}

resource "aws_instance" "demo" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

}

