output "ebs_snapshot_ids_lookup_id" {
  description = "Map of id values across all ebs_snapshot_ids_lookup, keyed the same as var.ebs_snapshot_ids_lookup"
  value       = { for k, v in data.aws_ebs_snapshot_ids.ebs_snapshot_ids_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ebs_snapshot_ids_lookup_filter" {
  description = "Map of filter values across all ebs_snapshot_ids_lookup, keyed the same as var.ebs_snapshot_ids_lookup"
  value       = { for k, v in data.aws_ebs_snapshot_ids.ebs_snapshot_ids_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ebs_snapshot_ids_lookup_ids" {
  description = "Map of ids values across all ebs_snapshot_ids_lookup, keyed the same as var.ebs_snapshot_ids_lookup"
  value       = { for k, v in data.aws_ebs_snapshot_ids.ebs_snapshot_ids_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "ebs_snapshot_ids_lookup_owners" {
  description = "Map of owners values across all ebs_snapshot_ids_lookup, keyed the same as var.ebs_snapshot_ids_lookup"
  value       = { for k, v in data.aws_ebs_snapshot_ids.ebs_snapshot_ids_lookup : k => v.owners if v.owners != null && length(v.owners) > 0 }
}
output "ebs_snapshot_ids_lookup_region" {
  description = "Map of region values across all ebs_snapshot_ids_lookup, keyed the same as var.ebs_snapshot_ids_lookup"
  value       = { for k, v in data.aws_ebs_snapshot_ids.ebs_snapshot_ids_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ebs_snapshot_ids_lookup_restorable_by_user_ids" {
  description = "Map of restorable_by_user_ids values across all ebs_snapshot_ids_lookup, keyed the same as var.ebs_snapshot_ids_lookup"
  value       = { for k, v in data.aws_ebs_snapshot_ids.ebs_snapshot_ids_lookup : k => v.restorable_by_user_ids if v.restorable_by_user_ids != null && length(v.restorable_by_user_ids) > 0 }
}

