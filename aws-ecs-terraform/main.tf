# main.tf | Main Configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "test-terraform-state-bucket-testing"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAX66DK3P32QRUU74F"
  secret_key = "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"
}
