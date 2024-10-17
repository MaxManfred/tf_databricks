
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

output "cluster_autotermination_minutes" {
    value = 15
}

output "cluster_num_workers" {
  value = 1
}