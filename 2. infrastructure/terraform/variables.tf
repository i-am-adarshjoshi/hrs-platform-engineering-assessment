variable "aws_region" {
  description = "AWS region selected for deployment"
  type        = string
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "platform-eks-cluster"
}

variable "vpc_cidr" {
  description = "CIDR block for platform VPC"
  type        = stringgit
  default     = "10.0.0.0/16"
}