terraform {
  source = "git::git@github.com:kvenkata986/terraform.git//services/eks?ref=main"
  #  source = "../../../../terraform//services/eks"
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

  node_groups = {
    "node-group-1" = {
      name           = "arm"
      instance_types = ["r7g.large"]
      desired_size   = 1
      max_size       = 1
      min_size       = 1
      ami_type       = "CUSTOM"
      image_id       = "ami-0b836913ce5b4839c"
    }
    "node-group-2" = {
      name           = "x86"
      instance_types = ["r5.large"]
      desired_size   = 1
      max_size       = 1
      min_size       = 1
      ami_type       = "CUSTOM"
      image_id       = "ami-03c2f1a52596048c8"
    }
  }

  eks_addon_version_kube_proxy     = "v1.26.2-eksbuild.1"
  #eks_addon_version_ebs_csi_driver = "v1.24.0-eksbuild.1"
  #eks_addon_version_kubecost       = "v1.103.3-eksbuild.0"
}
