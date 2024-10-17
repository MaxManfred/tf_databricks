# see https://docs.databricks.com/en/dev-tools/terraform/index.html#testing

mock_provider "databricks" {}

run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "cluster_name_test" {
#   command = [apply|plan]

  variables {
    cluster_autotermination_minutes   = run.setup_tests.cluster_autotermination_minutes
    cluster_num_workers               = run.setup_tests.cluster_num_workers
  }

  assert {
    condition       = databricks_cluster.test_cluster.cluster_name == var.cluster_name
    error_message   = "Cluster name did not match expected name"
  }
}