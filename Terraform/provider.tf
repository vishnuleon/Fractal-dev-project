terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~>2.20.0"
    }
  }
}

provider "docker" {}

provider "aws" {
  region = var.aws_region
}
