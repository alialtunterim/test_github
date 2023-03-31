# The name of this view in Looker is "Searches Table"
view: searches_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.searches_table`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " User ID" in Explore.

  dimension: _user_id {
    type: number
    sql: ${TABLE}._user_id ;;
  }

  dimension: analytics_version {
    type: string
    sql: ${TABLE}.analytics_version ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: event_recorder {
    type: string
    sql: ${TABLE}.event_recorder ;;
  }

  dimension: event_time {
    type: number
    sql: ${TABLE}.event_time ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_event_time {
    type: sum
    sql: ${event_time} ;;
  }

  measure: average_event_time {
    type: average
    sql: ${event_time} ;;
  }

  dimension: impersonator_id {
    type: number
    sql: ${TABLE}.impersonator_id ;;
  }

  dimension: is_admin_request {
    type: number
    sql: ${TABLE}.is_admin_request ;;
  }

  dimension: is_system_generated {
    type: number
    sql: ${TABLE}.is_system_generated ;;
  }

  dimension: org_hostname {
    type: string
    sql: ${TABLE}.org_hostname ;;
  }

  dimension: org_id_s {
    type: string
    sql: ${TABLE}.org_id_s ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: platform_version_number {
    type: string
    sql: ${TABLE}.platform_version_number ;;
  }

  dimension: record_insert_time {
    type: string
    sql: ${TABLE}.record_insert_time ;;
  }

  dimension: results_count {
    type: number
    sql: ${TABLE}.results_count ;;
  }

  dimension: search_query {
    type: string
    sql: ${TABLE}.search_query ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: time_string {
    type: string
    sql: ${TABLE}.time_string ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [org_hostname]
  }
}
