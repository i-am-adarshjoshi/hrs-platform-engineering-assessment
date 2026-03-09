resource "aws_eks_cluster" "platform_cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = "1.29"

  vpc_config {
    subnet_ids = []
  }

  tags = {
    Environment = "platform"
    ManagedBy   = "terraform"
  }
}