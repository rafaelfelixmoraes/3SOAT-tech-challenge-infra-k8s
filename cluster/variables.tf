variable "region" {
    type = string
    default = "East US"
    description = "Main Region"
}

variable "resource_group_name" {
    type = string
    default = "tc-g8-resources"
    description = "Resource Group Name"
}

variable "cluster_name" {
    type = string
    default = "tech-challenge-k8s"
    description = "Cluster Name"
}

variable "pool_name" {
    type = string
    default = "defaultpool"
    description = "Pool Name"
}

variable "vm_size" {
    type = string
    default = "Standard_B2S"
    description = "VM Size"
}

variable "client_id" {
  type = string
  default = "bb30276c-d0f8-4ab3-a99d-6efd4cede1f5"
  sensitive = true
  description = "Azure AD client_id"
}

variable "client_secret" {
  type = string
  default = "vxc8Q~yA2lwENh2SuvaGOfUgH6doL9IrZoKHKbI5"
  sensitive = true
  description = "Azure AD client_secret"
}