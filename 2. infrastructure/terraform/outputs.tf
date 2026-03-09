output "eks_cluster_name" {
  value = aws_eks_cluster.platform_cluster.name
}

output "vpc_id" {
  value = aws_vpc.platform_vpc.id
}