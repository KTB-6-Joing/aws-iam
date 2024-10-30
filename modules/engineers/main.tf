locals {
  common_tags = {
    role = var.eng_role
    part = "cloud"
  }
  common_groups = [
    aws_iam_group.eng.name
  ]
  eng_user_path = "/users/eng/"
}

resource "aws_iam_group" "eng" {
  name = var.group_name
  path = "/users/"
}

resource "aws_iam_user" "cloud-uno" {
  name = "cloud-uno"
  path = local.eng_user_path
  tags = local.common_tags
}

resource "aws_iam_user" "cloud-ethan" {
  name = "cloud-ethan"
  path = local.eng_user_path
  tags = local.common_tags
}

resource "aws_iam_user_group_membership" "cloud-uno" {
  user   = aws_iam_user.cloud-uno.name
  groups = local.common_groups
}

resource "aws_iam_user_group_membership" "cloud-ethan" {
  user   = aws_iam_user.cloud-ethan.name
  groups = local.common_groups
}