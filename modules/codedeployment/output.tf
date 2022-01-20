output "app_name" {
  value = aws_codedeploy_app.my_app.name
}
output "deployment_group_name" {
  value = aws_codedeploy_deployment_group.myapp_deployment_group.deployment_group_name
}