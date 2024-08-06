terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"  # Replace with your desired AWS region
  # You can also specify access credentials here if not using environment variables
  # access_key = "your_access_key"
  # secret_key = "your_secret_key"
}
