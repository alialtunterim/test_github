# The name of this view in Looker is "Lr Fajoc1680220864790 Meet Facts"
view: lr_fajoc1680220864790_meet_facts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `public.LR_FAJOC1680220864790_meet_facts`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg per Video Time On" in Explore.

  dimension: avg_per_video_time_on {
    type: number
    sql: ${TABLE}.avg_per_video_time_on ;;
  }

  dimension: calendar_event_id {
    type: string
    sql: ${TABLE}.calendar_event_id ;;
  }

  dimension: calendar_event_title {
    type: string
    sql: ${TABLE}.calendar_event_title ;;
  }

  dimension: conference_id {
    type: string
    sql: ${TABLE}.conference_id ;;
  }

  dimension: count_external_participants {
    type: number
    sql: ${TABLE}.count_external_participants ;;
  }

  dimension: count_internal_participants {
    type: number
    sql: ${TABLE}.count_internal_participants ;;
  }

  dimension: count_total_participants {
    type: number
    sql: ${TABLE}.count_total_participants ;;
  }

  dimension: is_video_on {
    type: yesno
    sql: ${TABLE}.is_video_on ;;
  }

  dimension: livestream_view_page_id {
    type: string
    sql: ${TABLE}.livestream_view_page_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: meeting_end {
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
    sql: ${TABLE}.meeting_end_time ;;
  }

  dimension: meeting_length_seconds {
    type: number
    sql: ${TABLE}.meeting_length_seconds ;;
  }

  dimension_group: meeting_start {
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
    sql: ${TABLE}.meeting_start_time ;;
  }

  dimension: organizer_email {
    type: string
    sql: ${TABLE}.organizer_email ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: participant_details {
    hidden: yes
    sql: ${TABLE}.participant_details ;;
  }

  dimension: total_duration_all_users {
    type: number
    sql: ${TABLE}.total_duration_all_users ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_duration_all_users {
    type: sum
    sql: ${total_duration_all_users} ;;
  }

  measure: average_total_duration_all_users {
    type: average
    sql: ${total_duration_all_users} ;;
  }

  dimension: total_screencast_send_seconds {
    type: number
    sql: ${TABLE}.total_screencast_send_seconds ;;
  }

  dimension: total_video_send_seconds {
    type: number
    sql: ${TABLE}.total_video_send_seconds ;;
  }

  dimension: video_time_per_person_seconds {
    type: number
    sql: ${TABLE}.video_time_per_person_seconds ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Lr Fajoc1680220864790 Meet Facts Participant Details"
view: lr_fajoc1680220864790_meet_facts__participant_details {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device Type" in Explore.

  dimension: device_type {
    type: string
    sql: device_type ;;
  }

  dimension: display_name {
    type: string
    sql: display_name ;;
  }

  dimension: duration_seconds {
    type: number
    sql: duration_seconds ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_duration_seconds {
    type: sum
    sql: ${duration_seconds} ;;
  }

  measure: average_duration_seconds {
    type: average
    sql: ${duration_seconds} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
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
    sql: end_time ;;
  }

  dimension: endpoint_id {
    type: string
    sql: endpoint_id ;;
  }

  dimension: identifier {
    type: string
    sql: identifier ;;
  }

  dimension: identifier_type {
    type: string
    sql: identifier_type ;;
  }

  dimension: ip_address {
    type: string
    sql: ip_address ;;
  }

  dimension: is_external {
    type: yesno
    sql: is_external ;;
  }

  dimension: location_country {
    type: string
    sql: location_country ;;
  }

  dimension: location_region {
    type: string
    sql: location_region ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: lr_fajoc1680220864790_meet_facts__participant_details {
    type: string
    hidden: yes
    sql: lr_fajoc1680220864790_meet_facts__participant_details ;;
  }

  dimension: screencast_send_seconds {
    type: number
    sql: screencast_send_seconds ;;
  }

  dimension_group: start {
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
    sql: start_time ;;
  }

  dimension: video_send_seconds {
    type: number
    sql: video_send_seconds ;;
  }
}
