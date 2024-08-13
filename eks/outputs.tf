output "cluster-id" {
  description = "des for EKS"
  value = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "des for cluster_endpoint"
  value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "cluster_security_group_id"
  value = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.aws_region
}

output "oidc_provider_arn" {
  description = "oidc_provider_arn"
  value = module.eks.oidc_provider_arn
}








