# The name of this view in Looker is "Lr Fao411680220938127 Drive Rollup Drive Week Ou"
view: lr_fao411680220938127_drive_rollup_drive_week_ou {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FAO411680220938127_drive_rollup_drive_week_ou`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Activity Org Unit Name Path Activity Org Unit Name Path" in Explore.

  dimension: activity__org_unit_name_path_activity__org_unit_name_path {
    type: string
    sql: ${TABLE}.activity__org_unit_name_path_activity__org_unit_name_path ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: activity_activity_week {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.activity_activity_week ;;
  }

  dimension: activity_count_all {
    type: number
    sql: ${TABLE}.activity_count_all ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_activity_count_all {
    type: sum
    sql: ${activity_count_all} ;;
  }

  measure: average_activity_count_all {
    type: average
    sql: ${activity_count_all} ;;
  }

  dimension: activity_count_all0 {
    type: number
    sql: ${TABLE}.activity_count_all0 ;;
  }

  dimension: activity_count_all__hll {
    type: string
    sql: ${TABLE}.activity_count_all__hll ;;
  }

  dimension: activity_count_copy {
    type: number
    sql: ${TABLE}.activity_count_copy ;;
  }

  dimension: activity_count_copy0 {
    type: number
    sql: ${TABLE}.activity_count_copy0 ;;
  }

  dimension: activity_count_copy__hll {
    type: string
    sql: ${TABLE}.activity_count_copy__hll ;;
  }

  dimension: activity_count_create {
    type: number
    sql: ${TABLE}.activity_count_create ;;
  }

  dimension: activity_count_create0 {
    type: number
    sql: ${TABLE}.activity_count_create0 ;;
  }

  dimension: activity_count_create__hll {
    type: string
    sql: ${TABLE}.activity_count_create__hll ;;
  }

  dimension: activity_count_delete {
    type: number
    sql: ${TABLE}.activity_count_delete ;;
  }

  dimension: activity_count_delete0 {
    type: number
    sql: ${TABLE}.activity_count_delete0 ;;
  }

  dimension: activity_count_delete__hll {
    type: string
    sql: ${TABLE}.activity_count_delete__hll ;;
  }

  dimension: activity_count_distinct_all_files_public {
    type: number
    sql: ${TABLE}.activity_count_distinct_all_files_public ;;
  }

  dimension: activity_count_distinct_all_files_public0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_all_files_public0 ;;
  }

  dimension: activity_count_distinct_all_files_public__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_all_files_public__hll ;;
  }

  dimension: activity_count_distinct_all_files_shares {
    type: number
    sql: ${TABLE}.activity_count_distinct_all_files_shares ;;
  }

  dimension: activity_count_distinct_all_files_shares0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_all_files_shares0 ;;
  }

  dimension: activity_count_distinct_all_files_shares__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_all_files_shares__hll ;;
  }

  dimension: activity_count_distinct_all_user_shares {
    type: number
    sql: ${TABLE}.activity_count_distinct_all_user_shares ;;
  }

  dimension: activity_count_distinct_all_user_shares0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_all_user_shares0 ;;
  }

  dimension: activity_count_distinct_all_user_shares__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_all_user_shares__hll ;;
  }

  dimension: activity_count_distinct_external_files_shares {
    type: number
    sql: ${TABLE}.activity_count_distinct_external_files_shares ;;
  }

  dimension: activity_count_distinct_external_files_shares0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_external_files_shares0 ;;
  }

  dimension: activity_count_distinct_external_files_shares__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_external_files_shares__hll ;;
  }

  dimension: activity_count_distinct_external_user_shares {
    type: number
    sql: ${TABLE}.activity_count_distinct_external_user_shares ;;
  }

  dimension: activity_count_distinct_external_user_shares0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_external_user_shares0 ;;
  }

  dimension: activity_count_distinct_external_user_shares__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_external_user_shares__hll ;;
  }

  dimension: activity_count_distinct_internal_files_shares {
    type: number
    sql: ${TABLE}.activity_count_distinct_internal_files_shares ;;
  }

  dimension: activity_count_distinct_internal_files_shares0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_internal_files_shares0 ;;
  }

  dimension: activity_count_distinct_internal_files_shares__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_internal_files_shares__hll ;;
  }

  dimension: activity_count_distinct_internal_user_shares {
    type: number
    sql: ${TABLE}.activity_count_distinct_internal_user_shares ;;
  }

  dimension: activity_count_distinct_internal_user_shares0 {
    type: number
    sql: ${TABLE}.activity_count_distinct_internal_user_shares0 ;;
  }

  dimension: activity_count_distinct_internal_user_shares__hll {
    type: string
    sql: ${TABLE}.activity_count_distinct_internal_user_shares__hll ;;
  }

  dimension: activity_count_download {
    type: number
    sql: ${TABLE}.activity_count_download ;;
  }

  dimension: activity_count_download0 {
    type: number
    sql: ${TABLE}.activity_count_download0 ;;
  }

  dimension: activity_count_download__hll {
    type: string
    sql: ${TABLE}.activity_count_download__hll ;;
  }

  dimension: activity_count_edit {
    type: number
    sql: ${TABLE}.activity_count_edit ;;
  }

  dimension: activity_count_edit0 {
    type: number
    sql: ${TABLE}.activity_count_edit0 ;;
  }

  dimension: activity_count_edit__hll {
    type: string
    sql: ${TABLE}.activity_count_edit__hll ;;
  }

  dimension: activity_count_external {
    type: number
    sql: ${TABLE}.activity_count_external ;;
  }

  dimension: activity_count_external0 {
    type: number
    sql: ${TABLE}.activity_count_external0 ;;
  }

  dimension: activity_count_external__hll {
    type: string
    sql: ${TABLE}.activity_count_external__hll ;;
  }

  dimension: activity_count_internal {
    type: number
    sql: ${TABLE}.activity_count_internal ;;
  }

  dimension: activity_count_internal0 {
    type: number
    sql: ${TABLE}.activity_count_internal0 ;;
  }

  dimension: activity_count_internal__hll {
    type: string
    sql: ${TABLE}.activity_count_internal__hll ;;
  }

  dimension: activity_count_of_docs {
    type: number
    sql: ${TABLE}.activity_count_of_docs ;;
  }

  dimension: activity_count_of_docs0 {
    type: number
    sql: ${TABLE}.activity_count_of_docs0 ;;
  }

  dimension: activity_count_of_docs__hll {
    type: string
    sql: ${TABLE}.activity_count_of_docs__hll ;;
  }

  dimension: activity_count_primary {
    type: number
    sql: ${TABLE}.activity_count_primary ;;
  }

  dimension: activity_count_primary0 {
    type: number
    sql: ${TABLE}.activity_count_primary0 ;;
  }

  dimension: activity_count_primary__hll {
    type: string
    sql: ${TABLE}.activity_count_primary__hll ;;
  }

  dimension: activity_count_secondary {
    type: number
    sql: ${TABLE}.activity_count_secondary ;;
  }

  dimension: activity_count_secondary0 {
    type: number
    sql: ${TABLE}.activity_count_secondary0 ;;
  }

  dimension: activity_count_secondary__hll {
    type: string
    sql: ${TABLE}.activity_count_secondary__hll ;;
  }

  dimension: activity_count_view {
    type: number
    sql: ${TABLE}.activity_count_view ;;
  }

  dimension: activity_count_view0 {
    type: number
    sql: ${TABLE}.activity_count_view0 ;;
  }

  dimension: activity_count_view__hll {
    type: string
    sql: ${TABLE}.activity_count_view__hll ;;
  }

  dimension: ou_lookup_ou_id {
    type: string
    sql: ${TABLE}.ou_lookup_ou_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
