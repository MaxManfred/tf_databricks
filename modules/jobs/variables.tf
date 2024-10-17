variable "job_name" {
  description = "A name for the job."
  type        = string
}

variable "task_key" {
  description = "A name for the task."
  type        = string
}

variable "cluster_id" {
  description = "The id of the cluster that will execute the job."
  type        = string
  default     = ""
}

variable "notebook_path" {
  description = "The absolute path of the notebook that has to be executed as part of the job's task."
  type        = string
  default     = ""
}