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
  access_key = "AKIA6PMUZQ4X2B3NDBPX"
  secret_key = "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"

}

resource "aws_instance" "aws_demo" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

}

