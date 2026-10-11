variable "database_db_nodes_lookup" {
  description = <<EOT
Map of database_db_nodes_lookup, attributes below
Required:
    - compartment_id
Optional:
    - db_server_id
    - db_system_id
    - state
    - vm_cluster_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    db_server_id   = optional(string)
    db_system_id   = optional(string)
    state          = optional(string)
    vm_cluster_id  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

