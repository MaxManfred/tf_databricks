# see https://docs.databricks.com/en/dev-tools/terraform/index.html#testing

mock_provider "databricks" {}

run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "job_name_test" {
 #   command = [apply|plan]

  variables {
    job_name    = run.setup_tests.job_name
    task_key    = run.setup_tests.task_key
  }

  assert {
    condition       = databricks_job.test_job.name == var.job_name
    error_message   = "Job name did not match expected name"
  }
}