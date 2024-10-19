# Define the providers to use: Databricks provider in this case
terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }

# The following is fo managing the state on an S3 remote backend.
# Comment it out forl a local backend.
  backend "s3" {
    bucket      = "terraform-azure-databricks"
    key         = "state/terraform.tfstate"
    region      = "eu-central-1"
    encrypt     = true
  }
}