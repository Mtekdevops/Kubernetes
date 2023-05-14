resource "aws_kms_key" "eks_secrets_encryption" {
  description = "KMS key for EKS cluster secrets encryption"
}


resource "aws_iam_policy" "eks_secrets_encryption" {
  name = "eks-secrets-encryption-policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "kms:Decrypt",
          "kms:DescribeKey",
        ]
        Resource = aws_kms_key.eks_secrets_encryption.arn
      }
    ]
  })
}

# Create AWS EKS Cluster
resource "aws_eks_cluster" "eks_cluster" {
#checkov:skip=CKV_AWS_58:will enable encryption when K8s secrets are used
  name     = "${local.name}-${var.cluster_name}"
  role_arn = aws_iam_role.eks_master_role.arn
  version = var.cluster_version

  vpc_config {
    subnet_ids = module.vpc.public_subnets
    endpoint_private_access = var.cluster_endpoint_private_access
    #checkov:skip=CKV_AWS_39:public access restricted to a single ip is ok for testing, change for prod 
    endpoint_public_access  = var.cluster_endpoint_public_access
    public_access_cidrs     = [local.single-workstation-external-cidr]    
  }

  kubernetes_network_config {
    service_ipv4_cidr = var.cluster_service_ipv4_cidr
  }
  
  encryption_config {
    provider {
      key_arn = aws_kms_key.eks_secrets_encryption.arn
    }
    resources = ["secrets"]
  }
  # Enable EKS Cluster Control Plane Logging
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.eks-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.eks-AmazonEKSVPCResourceController,
    aws_kms_key.eks_secrets_encryption,
  ]
}

