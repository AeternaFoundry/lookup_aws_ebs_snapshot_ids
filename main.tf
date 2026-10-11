data "aws_ebs_snapshot_ids" "ebs_snapshot_ids_lookup" {
  for_each = var.ebs_snapshot_ids_lookup

  owners                 = each.value.owners
  region                 = each.value.region
  restorable_by_user_ids = each.value.restorable_by_user_ids

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

