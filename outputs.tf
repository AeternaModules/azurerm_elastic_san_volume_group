output "elastic_san_volume_groups_id" {
  description = "Map of id values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.id }
}
output "elastic_san_volume_groups_elastic_san_id" {
  description = "Map of elastic_san_id values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.elastic_san_id }
}
output "elastic_san_volume_groups_encryption" {
  description = "Map of encryption values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.encryption }
}
output "elastic_san_volume_groups_encryption_type" {
  description = "Map of encryption_type values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.encryption_type }
}
output "elastic_san_volume_groups_identity" {
  description = "Map of identity values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.identity }
}
output "elastic_san_volume_groups_name" {
  description = "Map of name values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.name }
}
output "elastic_san_volume_groups_network_rule" {
  description = "Map of network_rule values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.network_rule }
}
output "elastic_san_volume_groups_protocol_type" {
  description = "Map of protocol_type values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.protocol_type }
}

