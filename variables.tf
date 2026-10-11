variable "fusion_apps_fusion_environment_scheduled_activities_lookup" {
  description = <<EOT
Map of fusion_apps_fusion_environment_scheduled_activities_lookup, attributes below
Required:
    - fusion_environment_id
Optional:
    - display_name
    - run_cycle
    - state
    - time_expected_finish_less_than_or_equal_to
    - time_scheduled_start_greater_than_or_equal_to
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    fusion_environment_id                         = string
    display_name                                  = optional(string)
    run_cycle                                     = optional(string)
    state                                         = optional(string)
    time_expected_finish_less_than_or_equal_to    = optional(string)
    time_scheduled_start_greater_than_or_equal_to = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

