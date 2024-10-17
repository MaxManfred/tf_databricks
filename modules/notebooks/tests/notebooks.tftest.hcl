# see https://docs.databricks.com/en/dev-tools/terraform/index.html#testing

mock_provider "databricks" {}

run "setup_tests" {
    module {
        source = "./tests/setup"
    }
}

run "notebook_path_test" {
 #   command = [apply|plan]

  variables {
    # current_user        = run.setup_tests.current_user
    notebook_filename   = run.setup_tests.notebook_filename
    notebook_filepath   = run.setup_tests.notebook_filepath
    notebook_language   = run.setup_tests.notebook_language
  }

  assert {
    condition       = databricks_notebook.test_notebook.path == "${module.data.current_user.home}/${var.notebook_subdirectory}/${var.notebook_filename}"
    error_message   = "Notebook path did not match expected path"
  }
}