# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.62"
     }
    helm = {
      source = "hashicorp/helm"
      #version = "2.4.1"
      version = "~> 2.9"
    }
    http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      version = "~> 3.2"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "tfstate-mtekdevops"
    key    = "dev/ebs-storage/terraform.tfstate"
    region = "us-east-1" 

    # For State Locking
    dynamodb_table = "tflockDDB-mtekdevops-dev"    
  }     
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}

# Terraform HTTP Provider Block
provider "http" {
  # Configuration options
}