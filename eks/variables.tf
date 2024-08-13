variable "kubernetes" {
  default = 1.27
  description = "Kubernetes version"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "VPC CIDR rane"
}
variable "aws_region" {
  default = "us-west-1"
  description = "aws region"
}

