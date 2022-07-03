terraform {
  source = "git::git@github.com:kvenkata986/terraform.git//services/s3_bucket?ref=main"
  ## source = "../../../terraform//services/s3_bucket"
}

inputs = {
  s3_bucket_name      = "test-bucket-atlantis-meetup-future-2022"
  tagname             = "test"
  aws_region          = "us-east-1"
}
