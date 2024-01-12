resource "azuredevops_project" "azure_devops_project" {
  name               = var.project_name_VV
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform"
}

resource "azuredevops_serviceendpoint_azurerm" "service_endpoint" {
  project_id                             = azuredevops_project.example.id
  service_endpoint_name                  = var.service_endpoint_name_VV
  description                            = "Managed by Terraform"
  service_endpoint_authentication_scheme = "ServicePrincipal"
  credentials {
    serviceprincipalid  = var.service_principal_id_VV
    serviceprincipalkey = var.service_principal_key_VV
  }
  azurerm_spn_tenantid      = var.tenant_id_VV
  azurerm_subscription_id   = var.subscription_id_VV
  azurerm_subscription_name = var.subscription_name_VV
}

resource "azuredevops_elastic_pool" "elastic_pool" {
  name                   = var.elastic_pool_name
  service_endpoint_id    = azuredevops_serviceendpoint_azurerm.example.id
  service_endpoint_scope = azuredevops_project.example.id
  desired_idle           = 2
  max_capacity           = 3
  azure_resource_id      = var.resource_id
}