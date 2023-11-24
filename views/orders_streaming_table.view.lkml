# The name of this view in Looker is "Orders Streaming Table"
view: orders_streaming_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `data-analytics-project-378108.Orders_Dataset.orders_streaming_table` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Addressline1" in Explore.

  dimension: addressline1 {
    type: string
    sql: ${TABLE}.ADDRESSLINE1 ;;
  }

  dimension: addressline2 {
    type: string
    sql: ${TABLE}.ADDRESSLINE2 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: contactfirstname {
    type: string
    sql: ${TABLE}.CONTACTFIRSTNAME ;;
  }

  dimension: contactlastname {
    type: string
    sql: ${TABLE}.CONTACTLASTNAME ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}.CUSTOMERNAME ;;
  }

  dimension: dealsize {
    type: string
    sql: ${TABLE}.DEALSIZE ;;
  }

  dimension: month_id {
    type: number
    sql: ${TABLE}.MONTH_ID ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.MSRP ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_msrp {
    type: sum
    sql: ${msrp} ;;  }
  measure: average_msrp {
    type: average
    sql: ${msrp} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: orderdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ORDERDATE ;;
  }

  dimension: orderlinenumber {
    type: number
    sql: ${TABLE}.ORDERLINENUMBER ;;
  }

  dimension: ordernumber {
    type: number
    sql: ${TABLE}.ORDERNUMBER ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.POSTALCODE ;;
  }

  dimension: priceeach {
    type: number
    sql: ${TABLE}.PRICEEACH ;;
  }

  dimension: productcode {
    type: string
    sql: ${TABLE}.PRODUCTCODE ;;
  }

  dimension: productline {
    type: string
    sql: ${TABLE}.PRODUCTLINE ;;
  }

  dimension: qtr_id {
    type: number
    sql: ${TABLE}.QTR_ID ;;
  }

  dimension: quantityordered {
    type: number
    sql: ${TABLE}.QUANTITYORDERED ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.SALES ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: territory {
    type: string
    sql: ${TABLE}.TERRITORY ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.YEAR_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [contactfirstname, contactlastname, customername]
  }
}
