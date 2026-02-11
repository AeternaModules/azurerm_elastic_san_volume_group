variable "elastic_san_volume_groups" {
  description = <<EOT
Map of elastic_san_volume_groups, attributes below
Required:
    - elastic_san_id
    - name
Optional:
    - encryption_type
    - protocol_type
    - encryption (block):
        - key_vault_key_id (required)
        - user_assigned_identity_id (optional)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - network_rule (block):
        - action (optional)
        - subnet_id (required)
EOT

  type = map(object({
    elastic_san_id  = string
    name            = string
    encryption_type = optional(string) # Default: "EncryptionAtRestWithPlatformKey"
    protocol_type   = optional(string) # Default: "Iscsi"
    encryption = optional(object({
      key_vault_key_id          = string
      user_assigned_identity_id = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_rule = optional(list(object({
      action    = optional(string) # Default: "Allow"
      subnet_id = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elastic_san_volume_groups : (
        v.network_rule == null || (length(v.network_rule) >= 1)
      )
    ])
    error_message = "Each network_rule list must contain at least 1 items"
  }
}

