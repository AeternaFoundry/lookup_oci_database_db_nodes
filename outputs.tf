output "database_db_nodes_lookup_id" {
  description = "Map of id values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_db_nodes_lookup_compartment_id" {
  description = "Map of compartment_id values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_db_nodes_lookup_db_nodes" {
  description = "Map of db_nodes values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no db_nodes are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.db_nodes if v.db_nodes != null && length(v.db_nodes) > 0 }
}
output "database_db_nodes_lookup_db_server_id" {
  description = "Map of db_server_id values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no db_server_id are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.db_server_id if v.db_server_id != null && length(v.db_server_id) > 0 }
}
output "database_db_nodes_lookup_db_system_id" {
  description = "Map of db_system_id values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no db_system_id are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "database_db_nodes_lookup_filter" {
  description = "Map of filter values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "database_db_nodes_lookup_state" {
  description = "Map of state values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_db_nodes_lookup_vm_cluster_id" {
  description = "Map of vm_cluster_id values across all database_db_nodes_lookup, keyed the same as var.database_db_nodes_lookup except keys with no vm_cluster_id are omitted"
  value       = { for k, v in data.oci_database_db_nodes.database_db_nodes_lookup : k => v.vm_cluster_id if v.vm_cluster_id != null && length(v.vm_cluster_id) > 0 }
}

