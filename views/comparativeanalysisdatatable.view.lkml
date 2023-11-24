# The name of this view in Looker is "Comparativeanalysisdatatable"

view: comparativeanalysisdatatable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `data-analytics-project-378108.customers_dataset.comparativeanalysisdatatable`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Product Name" in Explore.
  # This dimension will be called "Product Name" in Explore.
  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: salein2022 {
    type: number
    sql: ${TABLE}.salein2022 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_salein2022 {
    type: sum
    sql: ${salein2022} ;;
  }

  measure: average_salein2022 {
    type: average
    sql: ${salein2022} ;;
  }

  dimension: salein2023 {
    type: number
    sql: ${TABLE}.salein2023 ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
