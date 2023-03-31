# The name of this view in Looker is "Persons"
view: persons {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.Persons`
    ;;
  drill_fields: [person_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: person_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PersonID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  measure: count {
    type: count
    drill_fields: [person_id, first_name, last_name]
  }
}
