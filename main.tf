resource "azurerm_network_interface" "vmnic" {
  name                = "vmnic"
  location = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "VM1IP"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
    name                  = var.vm_name
    resource_group_name   = var.resource_group_name
    location = var.resource_group_location
    size                  = var.vm_size
    admin_username        = var.admin_usename
    admin_password        = var.admin_password
    network_interface_ids = [azurerm_network_interface.vmnic.id]
    os_disk {
        caching                 = "ReadWrite"
        storage_account_type    = "Standard_LRS"
    }
    source_image_reference {
        publisher = "MicrosoftWindowsServer"
        offer     = "WindowsServer"
        sku       = "2019-Datacenter"
        version   = "latest"
    }
}

