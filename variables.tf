variable "data_plane_resources" {
  description = <<EOT
Map of data_plane_resources, attributes below
Required:
    - parent_id
    - type
Optional:
    - body
    - create_headers
    - create_query_parameters
    - delete_headers
    - delete_query_parameters
    - ignore_casing
    - ignore_missing_property
    - locks
    - name
    - read_headers
    - read_query_parameters
    - replace_triggers_external_values
    - replace_triggers_refs
    - response_export_values
    - retry
    - sensitive_body
    - sensitive_body_version
    - update_headers
    - update_query_parameters
EOT

  type = map(object({
    parent_id              = string
    type                   = string
    sensitive_body_version = optional(map(string))
    sensitive_body         = optional(any)
    retry = optional(object({
      error_message_regex  = list(string)
      interval_seconds     = optional(number)
      max_interval_seconds = optional(number)
      multiplier           = optional(number)
      randomization_factor = optional(number)
    }))
    response_export_values           = optional(any)
    replace_triggers_refs            = optional(list(string))
    replace_triggers_external_values = optional(any)
    read_query_parameters            = optional(map(any))
    read_headers                     = optional(map(string))
    name                             = optional(string)
    locks                            = optional(list(string))
    ignore_missing_property          = optional(bool)
    ignore_casing                    = optional(bool)
    delete_query_parameters          = optional(map(any))
    delete_headers                   = optional(map(string))
    create_query_parameters          = optional(map(any))
    create_headers                   = optional(map(string))
    body                             = optional(any)
    update_headers                   = optional(map(string))
    update_query_parameters          = optional(map(any))
  }))
}

