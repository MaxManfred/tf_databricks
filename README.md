# tf_databricks
### Terraform with Databricks Demo

- To initialize Terraform with Databricks provider, each time you change folder type

    <code>terraform init</code>

- To compute a plan to be saved into a tf_databricks.tfplan file, type

    <code>terraform plan --detailed-exitcode -out=tf_databricks.tfplan file</code>

- To apply the saved plan of the previous step, type

    <code>terraform apply "tf_databricks.tfplan file"</code>

- To completely destroy the resources created by the applied plan, type

    <code>terraform destroy</code>