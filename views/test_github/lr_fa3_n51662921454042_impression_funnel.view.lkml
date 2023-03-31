# The name of this view in Looker is "Lr Fa3 N51662921454042 Impression Funnel"
view: lr_fa3_n51662921454042_impression_funnel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FA3N51662921454042_impression_funnel`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ad ID" in Explore.

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: count_clicks {
    type: number
    sql: ${TABLE}.count_clicks ;;
  }

  dimension: count_conversions {
    type: number
    sql: ${TABLE}.count_conversions ;;
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

  dimension: count_postclick_conversions {
    type: number
    sql: ${TABLE}.count_postclick_conversions ;;
  }

  dimension: count_postview_conversions {
    type: number
    sql: ${TABLE}.count_postview_conversions ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: first_activity {
    type: number
    sql: ${TABLE}.first_activity ;;
  }

  dimension: first_click {
    type: number
    sql: ${TABLE}.first_click ;;
  }

  dimension: first_impression {
    type: number
    sql: ${TABLE}.first_impression ;;
  }

  dimension: latest_activity {
    type: number
    sql: ${TABLE}.latest_activity ;;
  }

  dimension: latest_click {
    type: number
    sql: ${TABLE}.latest_click ;;
  }

  dimension: latest_impression {
    type: number
    sql: ${TABLE}.latest_impression ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: site_count {
    type: number
    sql: ${TABLE}.site_count ;;
  }

  dimension: state_region {
    type: string
    sql: ${TABLE}.state_region ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
