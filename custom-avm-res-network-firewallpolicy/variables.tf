# Vartiable for primary location
variable "location" {
  type        = string
  description = "Sets the location for the resources to be created in."
  default = "southeastasia"
}

# Vartiable for resource tagging
variable "tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default = {
    environment = "Common Network Services"
    owner       = "Network Team"
  }
}


variable "dev_firewall_policy_name01" {
  type        = string
  description = "Sets the firewall policy name for DEV"
  default = "dev-firewall-policy-01"
}

variable "nprd_firewall_policy_name01" {
  type        = string
  description = "Sets the firewall policy name for NPRD"
  default = "nprd-firewall-policy-01"
}