resource "azapi_data_plane_resource" "data_plane_resources" {
  for_each = var.data_plane_resources

  parent_id                        = each.value.parent_id
  type                             = each.value.type
  sensitive_body_version           = each.value.sensitive_body_version
  sensitive_body                   = each.value.sensitive_body
  retry                            = each.value.retry
  response_export_values           = each.value.response_export_values
  replace_triggers_refs            = each.value.replace_triggers_refs
  replace_triggers_external_values = each.value.replace_triggers_external_values
  read_query_parameters            = each.value.read_query_parameters
  read_headers                     = each.value.read_headers
  name                             = each.value.name
  locks                            = each.value.locks
  ignore_missing_property          = each.value.ignore_missing_property
  ignore_casing                    = each.value.ignore_casing
  delete_query_parameters          = each.value.delete_query_parameters
  delete_headers                   = each.value.delete_headers
  create_query_parameters          = each.value.create_query_parameters
  create_headers                   = each.value.create_headers
  body                             = each.value.body
  update_headers                   = each.value.update_headers
  update_query_parameters          = each.value.update_query_parameters
}

