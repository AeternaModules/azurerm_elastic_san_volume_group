output "elastic_san_volume_groups" {
  description = "All elastic_san_volume_group resources"
  value       = azurerm_elastic_san_volume_group.elastic_san_volume_groups
}
output "elastic_san_volume_groups_elastic_san_id" {
  description = "List of elastic_san_id values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.elastic_san_id]
}
output "elastic_san_volume_groups_encryption" {
  description = "List of encryption values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.encryption]
}
output "elastic_san_volume_groups_encryption_type" {
  description = "List of encryption_type values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.encryption_type]
}
output "elastic_san_volume_groups_identity" {
  description = "List of identity values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.identity]
}
output "elastic_san_volume_groups_name" {
  description = "List of name values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.name]
}
output "elastic_san_volume_groups_network_rule" {
  description = "List of network_rule values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.network_rule]
}
output "elastic_san_volume_groups_protocol_type" {
  description = "List of protocol_type values across all elastic_san_volume_groups"
  value       = [for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : v.protocol_type]
}

