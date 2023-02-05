terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "ec2demo" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"

}