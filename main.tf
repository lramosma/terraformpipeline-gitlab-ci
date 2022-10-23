terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "s3" {
    bucket = "curso-terraform-lramosma"
    key    = "pipeline-gitlab/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "lramosma"
      managed-by = "terraform"
    }
  }
}


data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "curso-terraform-lramosma"
    key    = "aws-pipeline-github-actions/terraform.tfstate"
    region = "sa-east-1"
  }
}


#comentario de sacanagi


