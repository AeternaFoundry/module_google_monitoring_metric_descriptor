output "monitoring_metric_descriptors_id" {
  description = "Map of id values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no id are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitoring_metric_descriptors_deletion_policy" {
  description = "Map of deletion_policy values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no deletion_policy are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "monitoring_metric_descriptors_description" {
  description = "Map of description values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no description are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.description if v.description != null && length(v.description) > 0 }
}
output "monitoring_metric_descriptors_display_name" {
  description = "Map of display_name values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no display_name are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "monitoring_metric_descriptors_labels" {
  description = "Map of labels values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no labels are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "monitoring_metric_descriptors_launch_stage" {
  description = "Map of launch_stage values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no launch_stage are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.launch_stage if v.launch_stage != null && length(v.launch_stage) > 0 }
}
output "monitoring_metric_descriptors_metadata" {
  description = "Map of metadata values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no metadata are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "monitoring_metric_descriptors_metric_kind" {
  description = "Map of metric_kind values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no metric_kind are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.metric_kind if v.metric_kind != null && length(v.metric_kind) > 0 }
}
output "monitoring_metric_descriptors_monitored_resource_types" {
  description = "Map of monitored_resource_types values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no monitored_resource_types are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.monitored_resource_types if v.monitored_resource_types != null && length(v.monitored_resource_types) > 0 }
}
output "monitoring_metric_descriptors_name" {
  description = "Map of name values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no name are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "monitoring_metric_descriptors_project" {
  description = "Map of project values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no project are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.project if v.project != null && length(v.project) > 0 }
}
output "monitoring_metric_descriptors_type" {
  description = "Map of type values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no type are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.type if v.type != null && length(v.type) > 0 }
}
output "monitoring_metric_descriptors_unit" {
  description = "Map of unit values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no unit are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.unit if v.unit != null && length(v.unit) > 0 }
}
output "monitoring_metric_descriptors_value_type" {
  description = "Map of value_type values across all monitoring_metric_descriptors, keyed the same as var.monitoring_metric_descriptors except keys with no value_type are omitted"
  value       = { for k, v in google_monitoring_metric_descriptor.monitoring_metric_descriptors : k => v.value_type if v.value_type != null && length(v.value_type) > 0 }
}

