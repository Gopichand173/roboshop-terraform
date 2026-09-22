provider "aws" {
	region = "us-east-1"
}

terraform {
  backend "s3" {

  }
}

provider "vault" {
 address = "http://vault-internal.gdevops72.com:8200"
 token   = var.token

}