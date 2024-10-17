# Define the Jupyter notebooks to manage
module "notebooks" {
   source = "../modules/notebooks"
   notebook_filename = var.notebook_filename
   notebook_filepath = var.notebook_filepath
   notebook_language = var.notebook_language
}

/* # Define the Spark clusters to manage
module "clusters" {
   source = "../modules/clusters"
   cluster_autotermination_minutes  = var.cluster_autotermination_minutes
   cluster_num_workers              = var.cluster_num_workers
}

# Define the Databricks jobs to manage
module "jobs" {
   depends_on = [ module.notebooks, module.clusters ]
   source = "../modules/jobs"
   job_name        = var.job_name
   task_key        = var.task_key
   cluster_id      = module.clusters.cluster_id
   notebook_path   = module.notebooks.notebook_path
} */