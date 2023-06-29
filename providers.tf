terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = ["/home/hxue/.aws/credentials"]
  profile                  = "kaisya"
  default_tags {
    tags = {
      Name  = "hao-demo"
      Owner = "tenable.cs"
    }
  }
}
