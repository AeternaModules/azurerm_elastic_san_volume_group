output "elastic_san_volume_groups_id" {
  description = "Map of id values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elastic_san_volume_groups_elastic_san_id" {
  description = "Map of elastic_san_id values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.elastic_san_id if v.elastic_san_id != null && length(v.elastic_san_id) > 0 }
}
output "elastic_san_volume_groups_encryption" {
  description = "Map of encryption values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.encryption if v.encryption != null && length(v.encryption) > 0 }
}
output "elastic_san_volume_groups_encryption_type" {
  description = "Map of encryption_type values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.encryption_type if v.encryption_type != null && length(v.encryption_type) > 0 }
}
output "elastic_san_volume_groups_identity" {
  description = "Map of identity values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "elastic_san_volume_groups_name" {
  description = "Map of name values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elastic_san_volume_groups_network_rule" {
  description = "Map of network_rule values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.network_rule if v.network_rule != null && length(v.network_rule) > 0 }
}
output "elastic_san_volume_groups_protocol_type" {
  description = "Map of protocol_type values across all elastic_san_volume_groups, keyed the same as var.elastic_san_volume_groups"
  value       = { for k, v in azurerm_elastic_san_volume_group.elastic_san_volume_groups : k => v.protocol_type if v.protocol_type != null && length(v.protocol_type) > 0 }
}

