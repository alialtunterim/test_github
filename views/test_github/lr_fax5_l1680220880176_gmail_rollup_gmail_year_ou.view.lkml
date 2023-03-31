# The name of this view in Looker is "Lr Fax5 L1680220880176 Gmail Rollup Gmail Year Ou"
view: lr_fax5_l1680220880176_gmail_rollup_gmail_year_ou {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FAX5L1680220880176_gmail_rollup_gmail_year_ou`
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

  dimension_group: activity_activity_year {
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
    sql: ${TABLE}.activity_activity_year ;;
  }

  dimension: activity_count_of_all_emails_received {
    type: number
    sql: ${TABLE}.activity_count_of_all_emails_received ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_activity_count_of_all_emails_received {
    type: sum
    sql: ${activity_count_of_all_emails_received} ;;
  }

  measure: average_activity_count_of_all_emails_received {
    type: average
    sql: ${activity_count_of_all_emails_received} ;;
  }

  dimension: activity_count_of_all_emails_received0 {
    type: number
    sql: ${TABLE}.activity_count_of_all_emails_received0 ;;
  }

  dimension: activity_count_of_all_emails_received__hll {
    type: string
    sql: ${TABLE}.activity_count_of_all_emails_received__hll ;;
  }

  dimension: activity_count_of_all_emails_sent {
    type: number
    sql: ${TABLE}.activity_count_of_all_emails_sent ;;
  }

  dimension: activity_count_of_all_emails_sent0 {
    type: number
    sql: ${TABLE}.activity_count_of_all_emails_sent0 ;;
  }

  dimension: activity_count_of_all_emails_sent__hll {
    type: string
    sql: ${TABLE}.activity_count_of_all_emails_sent__hll ;;
  }

  dimension: activity_count_of_authenticated_emails_received {
    type: number
    sql: ${TABLE}.activity_count_of_authenticated_emails_received ;;
  }

  dimension: activity_count_of_authenticated_emails_received0 {
    type: number
    sql: ${TABLE}.activity_count_of_authenticated_emails_received0 ;;
  }

  dimension: activity_count_of_authenticated_emails_received__hll {
    type: string
    sql: ${TABLE}.activity_count_of_authenticated_emails_received__hll ;;
  }

  dimension: activity_count_of_external_emails_sent {
    type: number
    sql: ${TABLE}.activity_count_of_external_emails_sent ;;
  }

  dimension: activity_count_of_external_emails_sent0 {
    type: number
    sql: ${TABLE}.activity_count_of_external_emails_sent0 ;;
  }

  dimension: activity_count_of_external_emails_sent__hll {
    type: string
    sql: ${TABLE}.activity_count_of_external_emails_sent__hll ;;
  }

  dimension: activity_count_of_internal_emails_sent {
    type: number
    sql: ${TABLE}.activity_count_of_internal_emails_sent ;;
  }

  dimension: activity_count_of_internal_emails_sent0 {
    type: number
    sql: ${TABLE}.activity_count_of_internal_emails_sent0 ;;
  }

  dimension: activity_count_of_internal_emails_sent__hll {
    type: string
    sql: ${TABLE}.activity_count_of_internal_emails_sent__hll ;;
  }

  dimension: activity_count_of_spam {
    type: number
    sql: ${TABLE}.activity_count_of_spam ;;
  }

  dimension: activity_count_of_spam0 {
    type: number
    sql: ${TABLE}.activity_count_of_spam0 ;;
  }

  dimension: activity_count_of_spam__hll {
    type: string
    sql: ${TABLE}.activity_count_of_spam__hll ;;
  }

  dimension: activity_count_of_unauthenticated_emails_received {
    type: number
    sql: ${TABLE}.activity_count_of_unauthenticated_emails_received ;;
  }

  dimension: activity_count_of_unauthenticated_emails_received0 {
    type: number
    sql: ${TABLE}.activity_count_of_unauthenticated_emails_received0 ;;
  }

  dimension: activity_count_of_unauthenticated_emails_received__hll {
    type: string
    sql: ${TABLE}.activity_count_of_unauthenticated_emails_received__hll ;;
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
