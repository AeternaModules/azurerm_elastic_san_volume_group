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
    encryption_type = optional(string)
    protocol_type   = optional(string)
    encryption = optional(object({
      key_vault_key_id          = string
      user_assigned_identity_id = optional(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_rule = optional(list(object({
      action    = optional(string)
      subnet_id = string
    })))
  }))
}

