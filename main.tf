
terraform {
  backend "azurerm" {
    storage_account_name = "secrets.BACKEND_STORAGEACCOUNT_NAME"
    container_name       = "secrets.TFSTATE_CONTAINER_NAME"
    key                  = "prod.terraform.tfstate"
    use_azuread_auth     = true
    subscription_id      = "secrets.ARM_SUBSCRIPTION_ID"
    tenant_id            = "secrets.ARM_TENANT_ID"
  }
}

