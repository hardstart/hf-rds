terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {}

module "rds" {
  source  = "app.terraform.io/healthfirst/rds/aws"
  version = "1.0.0"
  
  cluster_name            = var.cluster_name
  database_name           = var.database_name
  engine                  = var.engine
  instance_size           = var.instance_size
  environment             = var.environment
  subnet_type             = var.subnet_type
  skip_final_snapshot     = true
  cost_center             = var.cost_center
  ami_filters             = var.ami_filters
  account_vars            = var.account_vars
  cost_centers            = var.cost_centers
}
