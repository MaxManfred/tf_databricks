# Define the providers to use: Databricks provider in this case
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

# Authentication
variable "DATABRICKS_HOST" {
  description   = "The Databricks workspace to interact with"
  type          = string
}

variable "DATABRICKS_TOKEN" {
  description   = "The Databricks workspace token to use"
  type          = string
}

provider "databricks" {
  host  = var.DATABRICKS_HOST
  token = var.DATABRICKS_TOKEN
}