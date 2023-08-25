variable "vm_name" {
    type = string
    description = "The name of the virtual machine"
}
variable "resource_group_name" {
    type = string
    description = "The name of resource group"
}
variable "resource_group_location" {
    type = string
    description = "Azure location "
}
variable "vm_size" {
    type = string
    description = "size of the virtual machine"
}
variable "admin_usename" {
    type = string
    description = "local admin user of the virtual machine"
}
variable "admin_password" {
    type = string
    description = "password of the local admin user"
}
variable "subnet_id" {
    type = string
}
