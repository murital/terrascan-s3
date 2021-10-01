terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.45"
    }
  }
}

#configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}
