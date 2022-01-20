resource "aws_codepipeline" "codepipeline" {
  name     = "${terraform.workspace}-${var.codepipelinename}"
  role_arn = var.codepipeline_arn

  artifact_store {
    location = var.location
    type     = var.artitype
  }

  stage {
    name = "${terraform.workspace}-${var.stage_name}"

    action {
      name             = var.name
      category         = var.source1
      owner            = var.owner
      provider         = var.provider1
      version          = var.versiontype
      output_artifacts = ["source_output"]

      configuration = {
        ConnectionArn    = var.connection_arn
        FullRepositoryId = var.fullrepoid
        BranchName       = var.branchname
      }
    }
  }

  stage {
    name = "${terraform.workspace}-${var.stagename}"

    action {
      name            = var.action_name
      category        = var.category
      owner           = var.ownername
      provider        = var.provider2
      input_artifacts = ["source_output"]
      version         = var.version2

      configuration = {
        ApplicationName     = var.app_name
        DeploymentGroupName = var.deployment_group_name
      }
    }
  }
}
