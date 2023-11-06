remote_state {
  backend = "s3"

  config = {
    bucket     = "workshop-terraform-state-files"
    key        = "${path_relative_to_include()}/terraform.tfstate"
    region     = "us-east-1"
    kms_key_id = "arn:aws:kms:us-east-1:044463004324:alias/aws/s3"
    encrypt    = true
  }
}

locals {
}

inputs = merge(
  yamldecode(file(find_in_parent_folders("account.yaml"))),
  yamldecode(file(find_in_parent_folders("region.yaml")))
)

