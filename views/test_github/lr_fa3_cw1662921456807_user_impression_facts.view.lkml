# The name of this view in Looker is "Lr Fa3 Cw1662921456807 User Impression Facts"
view: lr_fa3_cw1662921456807_user_impression_facts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FA3CW1662921456807_user_impression_facts`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Campaign ID" in Explore.

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: count_impressions {
    type: number
    sql: ${TABLE}.count_impressions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count_impressions {
    type: sum
    sql: ${count_impressions} ;;
  }

  measure: average_count_impressions {
    type: average
    sql: ${count_impressions} ;;
  }

  dimension: impressions_per_user {
    type: number
    sql: ${TABLE}.impressions_per_user ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
