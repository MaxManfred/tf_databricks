# Define the providers to use: Databricks provider in this case
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

# Authentication
provider "databricks" {
  host  = var.DATABRICKS_HOST
  token = var.DATABRICKS_TOKEN
}