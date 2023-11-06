terraform {
  # source = "git::git@github.com:kvenkata986/terraform.git//services/atlantis?ref=main"
  source = "../../../terraform//services/atlantis"
}

inputs = {

  name = "atlantis"
  # VPC
  vpc_id          = "vpc-07c5da033ec43997d"
  cidr            = "172.31.0.0/16"
  azs             = ["us-east-2a", "us-east-2c", "us-east-2b"]
  private_subnets = ["172.31.0.0/20", "172.31.32.0/20", "172.31.16.0/20"]
  public_subnets  = ["172.31.0.0/20", "172.31.32.0/20", "172.31.16.0/20"]

  # DNS (without trailing dot)
  route53_zone_name = "atlantis-meetup.com"

  # Atlantis
  atlantis_github_user       = "kvenkata"
  atlantis_github_user_token = "testtoken"
  atlantis_repo_allowlist    = ["github.com/kvenkata986/terragrunt"]
}