# tf_databricks
Terraform with Databricks

To initialize

terraform init

To compute plan

terraform plan --detailed-exitcode -out=hello_databricks.tfplan

To apply plan

terraform apply "hello_databricks.tfplan"

To destroy created resources

terraform destroy