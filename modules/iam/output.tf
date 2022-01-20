output "service_role_arn" {
  value = aws_iam_role.codedeploy_role.arn
}

output "codepipeline_arn" {
  value = aws_iam_role.codepipeline_role.arn
}