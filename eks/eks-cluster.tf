module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "20.8.4"
  cluster_name = local.cluster_name
  cluster_version = var.kubernetes
  subnet_ids = module.vpc.private_subnets

   enable_irsa = true

   tags = {
    cluster="demo"
   }
vpc_id = module.vpc.vpc_id

eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
    instance_type = ["t3.medium"]
    vpc.security_group_id = [aws_security_group.all_worker_mgmt]
}
eks_managed_node_groups = {
    node_group = {
        min_size =2
        max_size =6
        desired_size =2
    }
}
}