output "frontend" {
  value = aws_iam_user.front.name
}

output "backend" {
  value = aws_iam_user.back.name
}

output "gen-ai" {
  value = aws_iam_user.gen-ai.name
}

output "rec-ai" {
  value = aws_iam_user.rec-ai.name
}