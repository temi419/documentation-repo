terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "2.70.4"  # this is an older version of the AWS provider
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "example-vpc"
  }
}
