provider "aws" {
  region = var.region
}
data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}
data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}

provider "kubernetes" {
  host = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token = data.aws_eks_cluster_auth.cluster.token
  load_config_file = false
  version = "~> 1.9"
}

module "my-cluster" {
  source = "terraform-aws-modules/eks/aws"
   version = "12.0.0"
  cluster_name = "my-cluster"
  cluster_version = "1.14"
  subnets = var.subnets
  vpc_id =  var.vpc_id
  tags = var.tags
  worker_groups = [{
    instance_type = "m4.large"
    asg_max_size = var.asg_max_size
    }
  ]
}