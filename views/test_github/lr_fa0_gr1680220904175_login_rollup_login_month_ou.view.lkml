# The name of this view in Looker is "Lr Fa0 Gr1680220904175 Login Rollup Login Month Ou"
view: lr_fa0_gr1680220904175_login_rollup_login_month_ou {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FA0GR1680220904175_login_rollup_login_month_ou`
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

  dimension: activity_account_warning_event_count {
    type: number
    sql: ${TABLE}.activity_account_warning_event_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_activity_account_warning_event_count {
    type: sum
    sql: ${activity_account_warning_event_count} ;;
  }

  measure: average_activity_account_warning_event_count {
    type: average
    sql: ${activity_account_warning_event_count} ;;
  }

  dimension: activity_account_warning_event_count0 {
    type: number
    sql: ${TABLE}.activity_account_warning_event_count0 ;;
  }

  dimension: activity_account_warning_event_count__hll {
    type: string
    sql: ${TABLE}.activity_account_warning_event_count__hll ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: activity_activity_month {
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
    sql: ${TABLE}.activity_activity_month ;;
  }

  dimension: activity_login_failure_count {
    type: number
    sql: ${TABLE}.activity_login_failure_count ;;
  }

  dimension: activity_login_failure_count0 {
    type: number
    sql: ${TABLE}.activity_login_failure_count0 ;;
  }

  dimension: activity_login_failure_count__hll {
    type: string
    sql: ${TABLE}.activity_login_failure_count__hll ;;
  }

  dimension: activity_login_success_count {
    type: number
    sql: ${TABLE}.activity_login_success_count ;;
  }

  dimension: activity_login_success_count0 {
    type: number
    sql: ${TABLE}.activity_login_success_count0 ;;
  }

  dimension: activity_login_success_count__hll {
    type: string
    sql: ${TABLE}.activity_login_success_count__hll ;;
  }

  dimension: activity_logout_count {
    type: number
    sql: ${TABLE}.activity_logout_count ;;
  }

  dimension: activity_logout_count0 {
    type: number
    sql: ${TABLE}.activity_logout_count0 ;;
  }

  dimension: activity_logout_count__hll {
    type: string
    sql: ${TABLE}.activity_logout_count__hll ;;
  }

  dimension: activity_password_edit_count {
    type: number
    sql: ${TABLE}.activity_password_edit_count ;;
  }

  dimension: activity_password_edit_count0 {
    type: number
    sql: ${TABLE}.activity_password_edit_count0 ;;
  }

  dimension: activity_password_edit_count__hll {
    type: string
    sql: ${TABLE}.activity_password_edit_count__hll ;;
  }

  dimension: activity_suspicious_login_count {
    type: number
    sql: ${TABLE}.activity_suspicious_login_count ;;
  }

  dimension: activity_suspicious_login_count0 {
    type: number
    sql: ${TABLE}.activity_suspicious_login_count0 ;;
  }

  dimension: activity_suspicious_login_count__hll {
    type: string
    sql: ${TABLE}.activity_suspicious_login_count__hll ;;
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
