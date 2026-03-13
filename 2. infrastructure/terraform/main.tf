locals {
  project_name = "hrs-platform"
  environment  = "platform"

  common_tags = {
    Project     = local.project_name
    Environment = local.environment
    ManagedBy   = "terraform"
  }
}

# This Terraform project provisions the infrastructure for a
# multi-tenant application platform used by multiple engineering teams.
# Resources are organized in separate files such as:
# vpc.tf, eks.tf, rds.tf, iam.tf, and namespaces.tf.