# The name of this view in Looker is "Mytable"
view: mytable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.mytable`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cost" in Explore.

  dimension: cost {
    type: string
    sql: ${TABLE}.Cost ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_month {
    type: sum
    sql: ${month} ;;
  }

  measure: average_month {
    type: average
    sql: ${month} ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.Product_Category ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.STORE ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
