# main.tf

terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "terraformers"

        workspaces {
            name = "tester"
        }

    }
}

provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}


