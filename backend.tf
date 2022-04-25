# create the S3 bucket with AWS cli

# aws s3api create-bucket --bucket bucket_name
terraform {
  required_version = ">=0.13.0"
  backend "s3" {
    region  = "us-east-1"
    profile = "default"
    key     = "terraformstatefile"
    bucket  = "bucket_name"
  }
}