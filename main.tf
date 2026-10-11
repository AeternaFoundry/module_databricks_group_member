resource "databricks_group_member" "group_members" {
  for_each = var.group_members

  group_id  = each.value.group_id
  member_id = each.value.member_id
  api       = each.value.api

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

