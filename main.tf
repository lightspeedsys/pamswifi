# main.tf

terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "lightspeedsys"

        workspaces {
            name = "pamswifi"
        }

    }
}

provider "aws" {
  profile    = "default"
  region     = "us-west-2"
}


