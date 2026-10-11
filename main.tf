data "oci_fusion_apps_fusion_environment_scheduled_activities" "fusion_apps_fusion_environment_scheduled_activities_lookup" {
  for_each = var.fusion_apps_fusion_environment_scheduled_activities_lookup

  fusion_environment_id                         = each.value.fusion_environment_id
  display_name                                  = each.value.display_name
  run_cycle                                     = each.value.run_cycle
  state                                         = each.value.state
  time_expected_finish_less_than_or_equal_to    = each.value.time_expected_finish_less_than_or_equal_to
  time_scheduled_start_greater_than_or_equal_to = each.value.time_scheduled_start_greater_than_or_equal_to

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

