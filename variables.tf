variable "group_members" {
  description = <<EOT
Map of group_members, attributes below
Required:
    - group_id
    - member_id
Optional:
    - api
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    group_id  = string
    member_id = string
    api       = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

