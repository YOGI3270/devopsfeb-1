terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

provider "aws" {
   access_key = "AKIAX5YGRPOAGDJQTX74"
   secret_key = "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"
   region = "us-east-1"
}

