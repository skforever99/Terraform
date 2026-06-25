terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.49.0"
    }
  }

  backend "s3" {
    bucket = "sunil-bucket-1999"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "sunil-dynamo-table"
  }
}