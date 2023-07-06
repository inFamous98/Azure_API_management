resource_group_name = "my-resource-group"
location            = "eastus"

api_management_instances = {
  "api-management-1" = {
    publisher_name   = "Publisher 1"
    publisher_email  = "publisher1@example.com"
    sku_name         = "Consumption_0"
    sku_capacity     = 1
  },
  "api-management-2" = {
    publisher_name   = "Publisher 2"
    publisher_email  = "publisher2@example.com"
    sku_name         = "Consumption_0"
    sku_capacity     = 2
  }
}