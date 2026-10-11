data "oci_database_db_nodes" "database_db_nodes_lookup" {
  for_each = var.database_db_nodes_lookup

  compartment_id = each.value.compartment_id
  db_server_id   = each.value.db_server_id
  db_system_id   = each.value.db_system_id
  state          = each.value.state
  vm_cluster_id  = each.value.vm_cluster_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

