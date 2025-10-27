
terraform {

  # backend "local" {
  #   path = "terraform.tfstate"
  # }

  # backend "s3" {
  #   bucket         = "my-terraform-state-fk"
  #   key            = "prod/aws_infra"
  #   region         = "ap-southeast-2"
  #   # dynamodb_table = "terraform-locks"
  #   # encrypt        = true
  # }
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "fkaba-terraform-hc-exam"
  #   workspaces {
  #     name = "aws-infra"
  #   }
  # }
  required_version = "~>1.9.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.12.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
  }
}