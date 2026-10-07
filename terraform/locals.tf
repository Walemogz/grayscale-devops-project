locals {
  environment = "dev"
  project_name = "grayscale"

  common_name = "${local.project_name}-${local.environment}"
}