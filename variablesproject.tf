# variables.tf

# Recovery Vault Resource Group
variable "recovery_rg_name" {
  type        = string
  description = "Name of the resource group for Recovery Vault"
}

variable "recovery_rg_location" {
  type        = string
  description = "Location of the resource group for Recovery Vault"
  default     = "eastus"
}

variable "recovery_vault_name" {
  type        = string
  description = "Name of the Recovery Services Vault"
  default     = "myRecoveryVault"
}

# Virtual Machine Resource Group
variable "vm_rg_name" {
  type        = string
  description = "Name of the resource group for the VM"
}

variable "vm_rg_location" {
  type        = string
  description = "Location of the resource group for the VM"
  default     = "westus"
}

variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
  default     = "myVnet"
}

variable "nic_name" {
  type        = string
  description = "Name of the Network Interface"
  default     = "myNIC"
}

variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine"
  default     = "myVM"
}

variable "vm_computer_name" {
  type        = string
  description = "Computer name for the Virtual Machine"
  default     = "myVM"
}

variable "vm_admin_username" {
  type        = string
  description = "Admin username for the Virtual Machine"
  default     = "adminuser"
}

variable "vm_admin_password" {
  type        = string
  description = "Admin password for the Virtual Machine"
}
