provider "aws" {
	region = "us-east-1"
}

terraform {
	backend "s3"{
      bucket = "terraform-g85"
      key    = "tools/dev/state.tfvars"
      region = "us-east-1"
    }
}