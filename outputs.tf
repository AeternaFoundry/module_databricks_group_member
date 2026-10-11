output "group_members_id" {
  description = "Map of id values across all group_members, keyed the same as var.group_members except keys with no id are omitted"
  value       = { for k, v in databricks_group_member.group_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_members_api" {
  description = "Map of api values across all group_members, keyed the same as var.group_members except keys with no api are omitted"
  value       = { for k, v in databricks_group_member.group_members : k => v.api if v.api != null && length(v.api) > 0 }
}
output "group_members_group_id" {
  description = "Map of group_id values across all group_members, keyed the same as var.group_members except keys with no group_id are omitted"
  value       = { for k, v in databricks_group_member.group_members : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_members_member_id" {
  description = "Map of member_id values across all group_members, keyed the same as var.group_members except keys with no member_id are omitted"
  value       = { for k, v in databricks_group_member.group_members : k => v.member_id if v.member_id != null && length(v.member_id) > 0 }
}
output "group_members_provider_config" {
  description = "Map of provider_config values across all group_members, keyed the same as var.group_members except keys with no provider_config are omitted"
  value       = { for k, v in databricks_group_member.group_members : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

