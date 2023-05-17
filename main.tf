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
  region     = "ap-southeast-2"
  access_key = "AKIAXVC3HURVEVOERMKH"
  secret_key = "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"

}

resource "awsinsta" "demo" {
  ami           = "ami-0d147324c76e8210a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleServerInstance"
  }
}

