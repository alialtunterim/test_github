# The name of this view in Looker is "Lr Fabjk1662921459214 User Campaign Facts"
view: lr_fabjk1662921459214_user_campaign_facts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FABJK1662921459214_user_campaign_facts`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "First Campaign Activity Date" in Explore.

  dimension: first_campaign_activity_date {
    type: number
    sql: ${TABLE}.first_campaign_activity_date ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_first_campaign_activity_date {
    type: sum
    sql: ${first_campaign_activity_date} ;;
  }

  measure: average_first_campaign_activity_date {
    type: average
    sql: ${first_campaign_activity_date} ;;
  }

  dimension: first_campaign_click_date {
    type: number
    sql: ${TABLE}.first_campaign_click_date ;;
  }

  dimension: first_campaign_impression_date {
    type: number
    sql: ${TABLE}.first_campaign_impression_date ;;
  }

  dimension: impression_funnel_campaign_id {
    type: string
    sql: ${TABLE}.impression_funnel_campaign_id ;;
  }

  dimension: impression_funnel_user_id {
    type: string
    sql: ${TABLE}.impression_funnel_user_id ;;
  }

  dimension: latest_campaign_activity_date {
    type: number
    sql: ${TABLE}.latest_campaign_activity_date ;;
  }

  dimension: latest_campaign_click_date {
    type: number
    sql: ${TABLE}.latest_campaign_click_date ;;
  }

  dimension: latest_campaign_impression_date {
    type: number
    sql: ${TABLE}.latest_campaign_impression_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
