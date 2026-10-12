variable "hybrid_tables" {
  description = <<EOT
Map of hybrid_tables, attributes below
Required:
    - database
    - name
    - schema
    - column (block):
        - collate (optional)
        - comment (optional)
        - default (optional, block):
            - constant (optional)
            - expression (optional)
            - sequence (optional)
        - name (required)
        - not_null (optional)
        - type (required)
    - primary_key_constraint (block):
        - columns (required)
        - name (optional)
Optional:
    - comment
    - data_retention_time_in_days
    - max_data_extension_time_in_days
    - foreign_key_constraint (block):
        - columns (required)
        - name (optional)
        - ref_columns (required)
        - table_name (required)
    - index (block):
        - columns (required)
        - include_columns (optional)
        - name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
    - unique_constraint (block):
        - columns (required)
        - name (optional)
EOT

  type = map(object({
    database                        = string
    name                            = string
    schema                          = string
    comment                         = optional(string)
    data_retention_time_in_days     = optional(number)
    max_data_extension_time_in_days = optional(number)
    column = list(object({
      collate = optional(string)
      comment = optional(string)
      default = optional(object({
        constant   = optional(string)
        expression = optional(string)
        sequence   = optional(string)
      }))
      name     = string
      not_null = optional(bool)
      type     = string
    }))
    primary_key_constraint = object({
      columns = list(string)
      name    = optional(string)
    })
    foreign_key_constraint = optional(list(object({
      columns     = list(string)
      name        = optional(string)
      ref_columns = list(string)
      table_name  = string
    })))
    index = optional(list(object({
      columns         = list(string)
      include_columns = optional(set(string))
      name            = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    unique_constraint = optional(list(object({
      columns = list(string)
      name    = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.hybrid_tables : (
        length(v.column) >= 1
      )
    ])
    error_message = "Each column list must contain at least 1 items"
  }
}

