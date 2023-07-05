variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location for the resources"
  type        = string
}

variable "api_management_instances" {
  description = "Map of API Management configurations"
  type        = map(object({
    publisher_name   = string
    publisher_email  = string
    sku_name         = string
    sku_capacity     = number
  }))
}
