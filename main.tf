resource "snowflake_hybrid_table" "hybrid_tables" {
  for_each = var.hybrid_tables

  database                        = each.value.database
  name                            = each.value.name
  schema                          = each.value.schema
  comment                         = each.value.comment
  data_retention_time_in_days     = each.value.data_retention_time_in_days
  max_data_extension_time_in_days = each.value.max_data_extension_time_in_days

  dynamic "column" {
    for_each = each.value.column
    content {
      collate = column.value.collate
      comment = column.value.comment
      dynamic "default" {
        for_each = column.value.default != null ? [column.value.default] : []
        content {
          constant   = default.value.constant
          expression = default.value.expression
          sequence   = default.value.sequence
        }
      }
      name     = column.value.name
      not_null = column.value.not_null
      type     = column.value.type
    }
  }

  primary_key_constraint {
    columns = each.value.primary_key_constraint.columns
    name    = each.value.primary_key_constraint.name
  }

  dynamic "foreign_key_constraint" {
    for_each = each.value.foreign_key_constraint != null ? each.value.foreign_key_constraint : []
    content {
      columns     = foreign_key_constraint.value.columns
      name        = foreign_key_constraint.value.name
      ref_columns = foreign_key_constraint.value.ref_columns
      table_name  = foreign_key_constraint.value.table_name
    }
  }

  dynamic "index" {
    for_each = each.value.index != null ? each.value.index : []
    content {
      columns         = index.value.columns
      include_columns = index.value.include_columns
      name            = index.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }

  dynamic "unique_constraint" {
    for_each = each.value.unique_constraint != null ? each.value.unique_constraint : []
    content {
      columns = unique_constraint.value.columns
      name    = unique_constraint.value.name
    }
  }
}

