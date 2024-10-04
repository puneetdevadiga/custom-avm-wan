# This is required for resource modules

module "avm-res-resources-rg-dev" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.1.0"
  location = var.location
  name     = "custom-dev-fw-policy-rg"
}

module "avm-res-resources-rg-nprd" {
  source  = "Azure/avm-res-resources-resourcegroup/azurerm"
  version = "0.1.0"
  location = var.location
  name     = "custom-nprd-fw-policy-rg"
}


# This is the module call
module "dev_firewall_policy_01" {
  source  = "Azure/avm-res-network-firewallpolicy/azurerm"
  version = "0.2.3"
  name                = var.dev_firewall_policy_name01
  location            = var.location
  resource_group_name = module.avm-res-resources-rg-dev.name
}

module "dev_rule_collection_group" {
  source             = "Azure/avm-res-network-firewallpolicy/azurerm//modules/rule_collection_groups"
  firewall_policy_rule_collection_group_firewall_policy_id = module.dev_firewall_policy_01.resource.id
  firewall_policy_rule_collection_group_name               = "DevRuleCollectionGroup"
  firewall_policy_rule_collection_group_priority           = 400
  firewall_policy_rule_collection_group_network_rule_collection = local.dev_network_rc
  firewall_policy_rule_collection_group_application_rule_collection = local.dev_app_rc
}


module "nprd_firewall_policy_01" {
  source  = "Azure/avm-res-network-firewallpolicy/azurerm"
  version = "0.2.3"
  name                = var.nprd_firewall_policy_name01
  location            = var.location
  resource_group_name = module.avm-res-resources-rg-nprd.name
}

module "nprd_rule_collection_group" {
  source             = "Azure/avm-res-network-firewallpolicy/azurerm//modules/rule_collection_groups"
  firewall_policy_rule_collection_group_firewall_policy_id = module.nprd_firewall_policy_01.resource.id
  firewall_policy_rule_collection_group_name               = "NPRDRuleCollectionGroup"
  firewall_policy_rule_collection_group_priority           = 400
  firewall_policy_rule_collection_group_network_rule_collection = local.nprd_network_rc
  firewall_policy_rule_collection_group_application_rule_collection = local.nprd_app_rc
}