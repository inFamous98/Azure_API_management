module "resource_group" {
  source              = "./api_management"
  resource_group_name = var.resource_group_name
  location            = var.location
  api_management_instances = var.api_management_instances
}

module "api_management" {
  source              = "./api_management"
  resource_group_name = var.resource_group_name
  location            = var.location
  api_management_instances           = var.api_management_instances
}