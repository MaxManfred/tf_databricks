module "data" {
  source = "../data"
}

resource "databricks_notebook" "test_notebook" {
  path     = "${module.data.current_user.home}/${var.notebook_subdirectory}/${var.notebook_filename}"
  language = var.notebook_language
  source   = "${var.notebook_filepath}/${var.notebook_filename}"
}