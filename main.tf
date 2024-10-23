module "admin" {
  source = "./modules/admin"
}

module "dev" {
  source = "./modules/developers"
}

module "eng" {
  source = "./modules/engineers"
}

resource "aws_iam_user" "terraform-cloud" {
  # Created in the Console
  # Access Keys Also Created in Console

  name = "terraform-cloud"
  path = "/"

  tags = {
    "role" : "terraform",
    "terraform" : "cloud"
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
} 