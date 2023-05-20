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
  access_key = "AKIA6PMUZQ4X7NKNVC3G"
  secret_key = "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"

}

resource "aws_instance" "demo" {
  ami           = "ami-0b08bfc6ff7069aff"
  instance_type = "t2.micro"

}

