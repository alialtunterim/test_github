# The name of this view in Looker is "Vrfy View 3b93e6f39d979ffffb9d4f191a43be99"
view: vrfy_view_3b93e6f39d979ffffb9d4f191a43be99 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.vrfy_view_3b93e6f39d979ffffb9d4f191a43be99`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Testcol" in Explore.

  dimension: testcol {
    type: string
    sql: ${TABLE}.testcol ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
