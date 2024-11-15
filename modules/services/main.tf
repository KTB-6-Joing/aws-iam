locals {
  common_tags = {
    role = var.svc_role
  }
  svc_user_path = "/users/svc/"
}

resource "aws_iam_user" "ecr_full" {
  name = "ecr-full"
  path = local.svc_user_path
  tags = local.common_tags
}

resource "aws_iam_user_policy" "ecr_full" {
  name = "ecr-full"
  user = aws_iam_user.ecr_full.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecr:*",
          "eks:DescribeCluster"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}


resource "aws_iam_user" "ssm_full" {
  name = "ssm-full"
  path = local.svc_user_path
  tags = local.common_tags
}

resource "aws_iam_user_policy" "ssm_full" {
  name = "ssm-full"
  user = aws_iam_user.ssm_full.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ssm:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}