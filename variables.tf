variable "ebs_snapshot_ids_lookup" {
  description = <<EOT
Map of ebs_snapshot_ids_lookup, attributes below
Optional:
    - owners
    - region
    - restorable_by_user_ids
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    owners                 = optional(list(string))
    region                 = optional(string)
    restorable_by_user_ids = optional(list(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

