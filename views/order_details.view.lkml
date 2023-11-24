# The name of this view in Looker is "Order Details"
view: order_details {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `data-analytics-project-378108.Orders_Dataset.order_details` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customerid" in Explore.

  dimension: customerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.customerid ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dateoforder {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dateoforder ;;
  }

  dimension: itemordered {
    type: string
    sql: ${TABLE}.itemordered ;;
  }

  dimension: ordercost {
    type: number
    sql: ${TABLE}.ordercost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ordercost {
    type: sum
    sql: ${ordercost} ;;  }
  measure: average_ordercost {
    type: average
    sql: ${ordercost} ;;  }

  dimension: orderid {
    type: string
    sql: ${TABLE}.orderid ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  measure: count {
    type: count
  }
}
