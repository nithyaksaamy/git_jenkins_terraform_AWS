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
  access_key = "AKIAXVC3HURVG6LH6TBG"
  secret_key = "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"

}

resource "aws_instance" "demo" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

}

