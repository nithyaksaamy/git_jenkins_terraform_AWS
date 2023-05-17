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
  region  = "ap-southeast-2"
  access_key = "AKIAXVC3HURVP4HLGDXW"
  secret_key = "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"

}

resource "aws_instance" "demo_app_server" {
  ami           = "ami-0d147324c76e8210a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

