resource "aws_codedeploy_app" "my_app" {
  name = "${var.name}-${terraform.workspace}"
}

resource "aws_codedeploy_deployment_group" "myapp_deployment_group" {
  app_name               = aws_codedeploy_app.my_app.name
  deployment_group_name  = "${var.group_name}-${terraform.workspace}"
  deployment_config_name = var.deployment_config_name
  service_role_arn       = var.service_role_arn

  ec2_tag_set {
    ec2_tag_filter {
      key   = var.key
      type  = var.type
      value = var.value
    }
  }
}