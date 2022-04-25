# providers carry out interactions with the vendor APIs such as AWS, Azure.
# They also provide logic for managing, updating, and creating resources in Terraform.

provider "aws" {
  profile = var.profile
  region  = var.region-master
  alias   = "region-master"
}

provider "aws" {
  profile = var.profile
  region  = var.region-worker
  alias   = "region-worker"
}