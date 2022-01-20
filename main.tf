module "iam" {
  source                = "./modules/iam"
  name                  = var.iam.name
  codepipelinerole      = var.iam.codepipelinerole


}

module "codedeployment" {
  source                 = "./modules/codedeployment"
  service_role_arn       = module.iam.service_role_arn
  name                   = var.codedeployment.name
  key                    = var.codedeployment.key
  type                   = var.codedeployment.type
  value                  = var.codedeployment.value
  deployment_config_name = var.codedeployment.deployment_config_name
  group_name             = var.codedeployment.group_name
}

module "codepipeline" {
  source                = "./modules/codepipeline"
  codepipelinename      = var.codepipeline.codepipelinename
  artitype              = var.codepipeline.artitype
  stage_name            = var.codepipeline.stage_name
  name                  = var.codepipeline.name
  source1               = var.codepipeline.source1
  owner                 = var.codepipeline.owner
  provider1             = var.codepipeline.provider1
  versiontype           = var.codepipeline.versiontype
  fullrepoid            = var.codepipeline.fullrepoid
  branchname            = var.codepipeline.branchname
  stagename             = var.codepipeline.stagename
  action_name           = var.codepipeline.action_name
  category              = var.codepipeline.category
  ownername             = var.codepipeline.ownername
  provider2             = var.codepipeline.provider2
  version2              = var.codepipeline.version2
  app_name              = module.codedeployment.app_name
  deployment_group_name = module.codedeployment.deployment_group_name
  location              = var.codepipeline.location
  connection_arn        = var.codepipeline.connection_arn
  codepipeline_arn      = module.iam.codepipeline_arn
}