output "ecr-full" {
  value = aws_iam_user.ecr_full.name
}

output "ssm-full" {
  value = aws_iam_user.ssm_full.name
}