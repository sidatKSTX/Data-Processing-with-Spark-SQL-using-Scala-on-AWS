locals {
  # Get AWS IAM user from caller identity
  created_by = var.created_by != "" ? var.created_by : split("/", data.aws_caller_identity.current.arn)[1]
  
  # Common tags to be applied to all resources
  common_tags = merge(var.default_tags, {
    CreatedBy = local.created_by
  })
}

# Data source to get current AWS caller identity
data "aws_caller_identity" "current" {}