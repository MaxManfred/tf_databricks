variable "notebook_subdirectory" {
  description = "A name for the subdirectory to store the notebook."
  type        = string
  default     = "tf_notebooks"
}

variable "notebook_filename" {
  description = "The notebook's filename."
  type        = string
}

variable "notebook_filepath" {
  description = "The notebook's file path in the codebase."
  type        = string
}

variable "notebook_language" {
  description = "The language of the notebook."
  type        = string
}