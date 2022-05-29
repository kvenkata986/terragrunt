terraform {
  source = "git::git@github.com:kvenkata986/terraform.git//services/s3_bucket?ref=master"
}

inputs = {
bucket      = "test-bucket-atlantis-meetup-future-2022"
Name        = "test"
}
