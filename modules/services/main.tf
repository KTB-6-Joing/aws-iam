locals {
  common_tags = {
    role = var.svc_role
  }
  svc_user_path = "/users/svc/"
}

resource "aws_iam_user" "ecr-full" {
  name = "ecr-full"
  path = local.svc_user_path
  tags = local.common_tags
}

resource "aws_iam_user_policy" "ecr-full" {
  name   = "ecr-full"
  user   = aws_iam_user.ecr_full.name
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecr:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
