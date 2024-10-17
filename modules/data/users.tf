terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

# Retrieve information about the current user.
data "databricks_current_user" "me" {}

output "current_user" {
  value = data.databricks_current_user.me
}