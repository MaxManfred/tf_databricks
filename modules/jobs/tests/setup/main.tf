
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

module "data" {
  source = "../data"
}

output "job_name" {
    value = "test_job_name"
}

output "task_key" {
  value = "test_task_key"
}

output "current_user" {
  value = module.data.current_user.user_name
}