codepipeline = {
  codepipelinename = "myapp_pipeline"
  artitype         = "S3"
  stage_name       = "Source"
  name             = "code_source"
  source1          = "Source"
  owner            = "AWS"
  provider1        = "CodeStarSourceConnection"
  versiontype      = "1"
  fullrepoid       = "danialfiaz/aws_codedeploy_using_github"
  branchname       = "master"
  stagename        = "Deploy"
  action_name      = "Deploy"
  category         = "Deploy"
  ownername        = "AWS"
  provider2        = "CodeDeploy"
  version2         = "1"
  location         = "codepipeline-us-east-1-510264935328"
  connection_arn   = "arn:aws:codestar-connections:us-east-1:569023477847:connection/f78f4602-2321-45d1-88c5-3c7dd6897ba4"
  #appname                 = "myapp"
  #deployment_group_name   = "myapp_deployment_group"
}
iam = {
  name             = "codedeploy_role"
  codepipelinerole = "test-role"
}
codedeployment = {
  deployment_config_name = "CodeDeployDefault.OneAtATime"
  group_name             = "myapp_deployment_group"
  name                   = "my_app"
  key                    = "Name"
  type                   = "KEY_AND_VALUE"
  value                  = "Ec2_deployment"
}