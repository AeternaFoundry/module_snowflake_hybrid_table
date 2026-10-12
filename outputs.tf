output "hybrid_tables_id" {
  description = "Map of id values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no id are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "hybrid_tables_column" {
  description = "Map of column values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no column are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.column if v.column != null && length(v.column) > 0 }
}
output "hybrid_tables_comment" {
  description = "Map of comment values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no comment are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "hybrid_tables_data_retention_time_in_days" {
  description = "Map of data_retention_time_in_days values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no data_retention_time_in_days are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.data_retention_time_in_days if v.data_retention_time_in_days != null }
}
output "hybrid_tables_database" {
  description = "Map of database values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no database are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.database if v.database != null && length(v.database) > 0 }
}
output "hybrid_tables_describe_output" {
  description = "Map of describe_output values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "hybrid_tables_foreign_key_constraint" {
  description = "Map of foreign_key_constraint values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no foreign_key_constraint are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.foreign_key_constraint if v.foreign_key_constraint != null && length(v.foreign_key_constraint) > 0 }
}
output "hybrid_tables_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "hybrid_tables_index" {
  description = "Map of index values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no index are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.index if v.index != null && length(v.index) > 0 }
}
output "hybrid_tables_max_data_extension_time_in_days" {
  description = "Map of max_data_extension_time_in_days values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no max_data_extension_time_in_days are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.max_data_extension_time_in_days if v.max_data_extension_time_in_days != null }
}
output "hybrid_tables_name" {
  description = "Map of name values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no name are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "hybrid_tables_primary_key_constraint" {
  description = "Map of primary_key_constraint values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no primary_key_constraint are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => one(v.primary_key_constraint) if v.primary_key_constraint != null && length(v.primary_key_constraint) > 0 }
}
output "hybrid_tables_schema" {
  description = "Map of schema values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no schema are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "hybrid_tables_show_keys_output" {
  description = "Map of show_keys_output values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no show_keys_output are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.show_keys_output if v.show_keys_output != null && length(v.show_keys_output) > 0 }
}
output "hybrid_tables_show_output" {
  description = "Map of show_output values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no show_output are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "hybrid_tables_unique_constraint" {
  description = "Map of unique_constraint values across all hybrid_tables, keyed the same as var.hybrid_tables except keys with no unique_constraint are omitted"
  value       = { for k, v in snowflake_hybrid_table.hybrid_tables : k => v.unique_constraint if v.unique_constraint != null && length(v.unique_constraint) > 0 }
}

