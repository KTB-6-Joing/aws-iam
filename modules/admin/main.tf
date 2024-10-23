resource "aws_iam_user" "admin" {
  name = var.admin
  path = "/"

  tags = {
      role = var.admin
    }
}

resource "aws_iam_user_policy" "admin" {
  name = var.admin
  user = aws_iam_user.admin.name

  // AdministratorAccess
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
  })
}