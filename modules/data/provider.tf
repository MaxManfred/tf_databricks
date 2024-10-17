# Define the providers to use: Databricks provider in this case
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
      host = var.DATABRICKS_HOST
      token = var.DATABRICKS_TOKEN
    }
  }
}