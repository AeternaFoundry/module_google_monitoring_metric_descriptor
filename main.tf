resource "google_monitoring_metric_descriptor" "monitoring_metric_descriptors" {
  for_each = var.monitoring_metric_descriptors

  metric_kind     = each.value.metric_kind
  type            = each.value.type
  value_type      = each.value.value_type
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  launch_stage    = each.value.launch_stage
  project         = each.value.project
  unit            = each.value.unit

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      description = labels.value.description
      key         = labels.value.key
      value_type  = labels.value.value_type
    }
  }

  dynamic "metadata" {
    for_each = each.value.metadata != null ? [each.value.metadata] : []
    content {
      ingest_delay  = metadata.value.ingest_delay
      sample_period = metadata.value.sample_period
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

