# Description
Here, In this template, we will create the elastic pool in Azure DevOps to run the pipeline using the Terraform module.


---

### Pre-Requisite
* Azure Account
* Pre Login into your Azure Account

---
### Steps
* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.

```
Commands :
-  terraform init
-  terraform plan
-  terraform apply
```
* You can create your own `terraform.auto.tfvars` file to define the values of the variables like `vi terraform.auto.tfvars`
  E.g:-
  `variable_name = value`
---

## Configuration

The following table lists the configurable parameters with their default values.

| Parameters                  | Description              | Default | Type   | Required |
|-----------------------------|--------------------------|---------|--------|----------|
| adotoken_VV                 | Personal Access Token    |         | string | Yes      |  
| organization_service_url_VV | Organisation Service URL |         | string | Yes      |  
| project_name_VV             | Name of Project          |         | string | Yes      |
| service_endpoint_name_VV    | Name of Service Endpoint |         | string | Yes      |
| service_principal_id_VV     | ID of Service Principal  |         | string | Yes      |     
| service_principal_key_VV    | ID of Service Principal  |         | string | Yes      |   
| subscription_id_VV          | ID of Subscription       |         | string | Yes      |    
| subscription_name_VV        | Name of Subscription     |         | string | Yes      |  
| tenant_id_VV                | description ID of Tenant |         | string | Yes      |   
| elastic_pool_name           | Name of elastic pool     |         | string | Yes      |  
| resource_id                 | Name of resource         |         | string | Yes      |   


---
