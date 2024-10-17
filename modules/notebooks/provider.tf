# Define the providers to use: Databricks provider in this case
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}