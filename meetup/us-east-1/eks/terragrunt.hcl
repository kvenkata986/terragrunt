terraform {
  # source = "git::git@github.com:kvenkata986/terraform.git//services/eks?ref=main"
  source = "../../../terraform//services/eks"
}

include {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  name               = "meetup"
  private_subnet_ids = dependency.vpc.outputs.private_subnet_ids
  eks_version        = "1.26"
}
