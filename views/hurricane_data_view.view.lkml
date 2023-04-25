# The name of this view in Looker is "Hurricane Data View"
view: hurricane_data_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `data-analytics-project-378108.HurricaneData.hurricane_data_view`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dist2land" in Explore.

  dimension: dist2land {
    type: number
    sql: ${TABLE}.dist2land ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_dist2land {
    type: sum
    sql: ${dist2land} ;;
  }

  measure: average_dist2land {
    type: average
    sql: ${dist2land} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: iso {
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
    sql: ${TABLE}.iso_time ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: point {
    type: string
    sql: ${TABLE}.point ;;
  }

  dimension: radius_34kt {
    type: number
    sql: ${TABLE}.radius_34kt ;;
  }

  dimension: radius_50kt {
    type: number
    sql: ${TABLE}.radius_50kt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
