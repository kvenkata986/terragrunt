terraform {
  # source = "git::git@github.com:kvenkata986/terraform.git//services/atlantis?ref=main"
  source = "../../../terraform//services/vpc"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  vpc_cidr_block             = "10.0.0.0/16"
  public_subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
}