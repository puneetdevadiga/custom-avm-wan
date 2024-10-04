# outputs.tf

output "dev_firewall_policy_id" {
  value = module.dev_firewall_policy_01.resource.id
}

output "nprd_firewall_policy_id" {
  value = module.nprd_firewall_policy_01.resource.id
}