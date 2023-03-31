# The name of this view in Looker is "T2"
view: t2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.t2`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "English" in Explore.

  dimension: english {
    type: number
    sql: ${TABLE}.english ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_english {
    type: sum
    sql: ${english} ;;
  }

  measure: average_english {
    type: average
    sql: ${english} ;;
  }

  dimension: maths {
    type: number
    sql: ${TABLE}.maths ;;
  }

  dimension: science {
    type: number
    sql: ${TABLE}.science ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
