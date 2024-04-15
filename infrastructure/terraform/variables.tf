variable "location" {
  description = "Specifies the location for all Azure resources."
  type        = string
  sensitive   = false
  default     = "eastus"
}

variable "azureOpenAiWorkload_rg" {
  description = "Specifies the name of the resource group."
  type        = string
  sensitive   = false
  default     = "kk-azoai-eastus-rg"
  validation {
    condition     = length(var.azureOpenAiWorkload_rg) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "observability_rg" {
  description = "Specifies the name of the resource group."
  type        = string
  sensitive   = false
  default     = "kk-logw-eastus-rg"
  validation {
    condition     = length(var.observability_rg) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "subnet_id" { 
  description = "Specifies the resourceId of an existing subnet, in the same region as the rest of the workloads that will be created."
  type        = string
  sensitive   = false
  default = "/subscriptions/8acd66a0-739e-4c34-88d3-acb78559fdf8/resourceGroups/vnet-eastus/providers/Microsoft.Network/virtualNetworks/vnet-eastus/subnets/default"
}

variable "log_analytics_sku" {
  description = "Specifies the SKU for the log analytics workspace"
  type        = string
  sensitive   = false
  default     = "PerGB2018"
}

variable "key_vault_sku" {
  description = "Specifies the SKU for the key vault"
  type        = string
  sensitive   = false
  default     = "premium"
}

variable "key_vault_name" {
  description = "Specifies the name of the key vault."
  type        = string
  sensitive   = false
  default     = "kk-azsecret-eastus-kv"
  validation {
    condition     = length(var.key_vault_name) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "log_analytics_name" {
  description = "Specifies the name of the log analytics workspace"
  type        = string
  sensitive   = false
  default     = "kkazlogs-eastus-law"
    validation {
    condition     = length(var.log_analytics_name) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "cognitive_service_name" {
  description = "Specifies the name of the cognitive service."
  type        = string
  sensitive   = false
  default     = "kkazoai-eastus-ai"
  validation {
    condition     = length(var.cognitive_service_name) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "user_assigned_identity_name" {
  description = "Specifies the name of the user assigned identity."
  type        = string
  sensitive   = false
  default     = "kk-id-eastus-uai"
  validation {
    condition     = length(var.user_assigned_identity_name) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "storage_account_name" {
  description = "Specifies the name of the storage account."
  type        = string
  default     = "kkknstai122311"
  sensitive   = false
  validation {
    condition     = length(var.storage_account_name) >= 2
    error_message = "Please specify a valid name."
  }
}

variable "partition_count" {
  description = "Specifies the number of partitions in the search service."
  type        = number
  sensitive   = false
  default     = 1
  
}

variable "replica_count" {
  description = "Specifies the number of replicas in the search service."
  type        = number
  sensitive   = false
  default     = 1
  
}

variable "search_service_name" {
  description = "Specifies the name of the search service."
  type        = string
  sensitive   = false
  default     = "kkazsearcheastusss" #does not support '-' in name
  validation {
    condition     = length(var.search_service_name) >= 2
    error_message = "Please specify a valid name."
  }
  
}