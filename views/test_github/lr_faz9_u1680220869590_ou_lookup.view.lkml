# The name of this view in Looker is "Lr Faz9 U1680220869590 Ou Lookup"
view: lr_faz9_u1680220869590_ou_lookup {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FAZ9U1680220869590_ou_lookup`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "JSON Ou Path" in Explore.

  dimension: json_ou_path {
    type: string
    sql: ${TABLE}.json_ou_path ;;
  }

  dimension: ou_id {
    type: string
    sql: ${TABLE}.ou_id ;;
  }

  dimension: ou_name {
    type: string
    sql: ${TABLE}.ou_name ;;
  }

  measure: count {
    type: count
    drill_fields: [ou_name]
  }
}
