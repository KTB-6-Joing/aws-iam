locals {
  common_tags = {
    role = var.dev_role
  }
  common_groups = [
    aws_iam_group.dev.name
  ]
  dev_user_path = "/users/dev/"
}

resource "aws_iam_group" "dev" {
  name = var.group_name
  path = "/users/"
}

resource "aws_iam_user" "front" {
  name = var.front
  path = local.dev_user_path

  tags = merge(
    {
      part = var.front
    },
    local.common_tags 
  )
}

resource "aws_iam_user" "back" {
  name = var.back
  path = local.dev_user_path

  tags = merge(
    {
      part = var.back
    },
    local.common_tags 
  )
}

resource "aws_iam_user" "gen-ai" {
  name = var.gen-ai
  path = local.dev_user_path

  tags = merge(
    {
      part = var.gen-ai
    },
    local.common_tags 
  )
}

resource "aws_iam_user" "rec-ai" {
  name = var.rec-ai
  path = local.dev_user_path

  tags = merge(
    {
      part = var.rec-ai
    },
    local.common_tags 
  )
}

resource "aws_iam_user_group_membership" "frontend" {
  user = aws_iam_user.front.name
  groups = local.common_groups
}

resource "aws_iam_user_group_membership" "backend" {
  user = aws_iam_user.back.name
  groups = local.common_groups
}

resource "aws_iam_user_group_membership" "gen-ai" {
  user = aws_iam_user.gen-ai.name
  groups = local.common_groups
}

resource "aws_iam_user_group_membership" "rec-ai" {
  user = aws_iam_user.rec-ai.name
  groups = local.common_groups
}
