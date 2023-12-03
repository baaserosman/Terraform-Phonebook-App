terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  # If AWS-Configure was not done locally, access_key and secret_key could be specified here.
  access_key = "access_key"
  secret_key = "secret_key"
}


# Configure the GitHub Provider
provider "github" {
  token = var.git-token
}
