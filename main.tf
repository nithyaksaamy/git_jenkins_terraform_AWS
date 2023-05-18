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
  access_key = "AKIAXVC3HURVD5BSSXW3"
  secret_key = "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"

}

resource "aws_instance" "demo" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

}

