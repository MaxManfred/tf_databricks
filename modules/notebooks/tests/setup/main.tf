terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}

output "notebook_filename" {
  value = "notebook-getting-started.py"
}

output "notebook_filepath" {
  value = "."
}

output "notebook_language" {
  value = "PYTHON"
}