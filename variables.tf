variable "monitoring_metric_descriptors" {
  description = <<EOT
Map of monitoring_metric_descriptors, attributes below
Required:
    - metric_kind
    - type
    - value_type
Optional:
    - deletion_policy
    - description
    - display_name
    - launch_stage
    - project
    - unit
    - labels (block):
        - description (optional)
        - key (required)
        - value_type (optional)
    - metadata (block):
        - ingest_delay (optional)
        - sample_period (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    metric_kind     = string
    type            = string
    value_type      = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    launch_stage    = optional(string)
    project         = optional(string)
    unit            = optional(string)
    labels = optional(list(object({
      description = optional(string)
      key         = string
      value_type  = optional(string)
    })))
    metadata = optional(object({
      ingest_delay  = optional(string)
      sample_period = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

