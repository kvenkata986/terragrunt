terraform {
  source = "git::git@github.com:kvenkata986/terraform.git//services/s3_bucket?ref=main"
  # source = "../../../terraform//services/s3_bucket"
}

inputs = {
  s3_bucket_name = "workshop-terraform-state-files"
  tagname        = "meetup"
  aws_region     = "us-east-1"
}
