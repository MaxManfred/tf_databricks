
module "data" {
  source = "../data"
}

resource "databricks_job" "test_job" {
  name = var.job_name
  task {
    task_key = var.task_key
    existing_cluster_id = var.cluster_id
    notebook_task {
      notebook_path = var.notebook_path
    }
  }
  email_notifications {
    on_success = [ module.data.current_user.user_name ]
    on_failure = [ module.data.current_user.user_name ]
  }
}