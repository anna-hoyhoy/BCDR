# main.tf

provider "azurerm" {
  features {}
}

# Resource Group for Recovery Vault - cost center tag missing
resource "azurerm_resource_group" "recovery_rg" {
  name     = var.recovery_rg_name
  location = var.recovery_rg_location
   tags = {
    CostCenter = "Capstone"  
  }
}

# Recovery Services Vault - cost center tag missing
resource "azurerm_recovery_services_vault" "recovery_vault" {
  name                = var.recovery_vault_name
  location            = azurerm_resource_group.recovery_rg.location
  resource_group_name = azurerm_resource_group.recovery_rg.name
  sku                 = "Standard"
}

# Resource Group for Virtual Machine
resource "azurerm_resource_group" "vm_rg" {
  name     = var.vm_rg_name
  location = var.vm_rg_location
   tags = {
    CostCenter = "Capstone"  
  }
 
}

# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.vm_rg.location
  resource_group_name = azurerm_resource_group.vm_rg.name
  address_space       = ["10.0.0.0/16"]
}

# Network Interface
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = azurerm_resource_group.vm_rg.location
  resource_group_name = azurerm_resource_group.vm_rg.name

  ip_configuration {
    name                          = "myNicConfiguration"
    subnet_id                     = azurerm_virtual_network.vnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Virtual Machine
resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = azurerm_resource_group.vm_rg.location
  resource_group_name   = azurerm_resource_group.vm_rg.name
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
# may be storage_disk_type
  os_disk {
    name              = "myOSDisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = var.vm_computer_name
    admin_username = var.vm_admin_username
    admin_password = var.vm_admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  depends_on = [azurerm_network_interface.nic]
}
