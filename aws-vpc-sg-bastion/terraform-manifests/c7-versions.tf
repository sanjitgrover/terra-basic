terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
