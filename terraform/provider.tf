terraform {

  required_version = "~> 2.51.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.9.0"
    }
  }

  backend "s3" {
    bucket       = "dori"
    key          = "tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }

}