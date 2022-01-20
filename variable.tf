variable "codepipeline" {
  type = object({
    codepipelinename = string
    artitype         = string
    stage_name       = string
    name             = string
    source1          = string
    owner            = string
    provider1        = string
    versiontype      = string
    fullrepoid       = string
    branchname       = string
    stagename        = string
    action_name      = string
    category         = string
    ownername        = string
    provider2        = string
    version2         = string
    location         = string
    connection_arn   = string
  

  })

}
variable "iam" {
  type = object({
    name             = string
    codepipelinerole = string
  })
}

variable "codedeployment" {
  type = object({
    name                   = string
    key                    = string
    type                   = string
    value                  = string
    deployment_config_name = string
    group_name             = string
  })

}