resource "aws_eks_cluster" "ecommerce_eks" {
  name     = "ecommerce-eks"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = var.private_subnet_ids
  }

  version = "1.29"

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]
}


resource "aws_eks_node_group" "ecommerce_nodes" {
  cluster_name    = aws_eks_cluster.ecommerce_eks.name
  node_group_name = "ecommerce-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
  subnet_ids      = var.private_subnet_ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 5
  }

  instance_types = ["t3.medium"]

  depends_on = [
    aws_iam_role_policy_attachment.worker_node_policies
  ]
}
