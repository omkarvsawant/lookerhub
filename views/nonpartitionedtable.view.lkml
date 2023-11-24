# The name of this view in Looker is "Nonpartitionedtable"
view: nonpartitionedtable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `data-analytics-project-378108.blockchain_dataset.nonpartitionedtable` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Difficulty" in Explore.

  dimension: difficulty {
    type: number
    sql: ${TABLE}.difficulty ;;
  }

  dimension: extra_data {
    type: string
    sql: ${TABLE}.extra_data ;;
  }

  dimension: gas_limit {
    type: number
    sql: ${TABLE}.gas_limit ;;
  }

  dimension: gas_used {
    type: number
    sql: ${TABLE}.gas_used ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: logs_bloom {
    type: string
    sql: ${TABLE}.logs_bloom ;;
  }

  dimension: miner {
    type: string
    sql: ${TABLE}.miner ;;
  }

  dimension: nonce {
    type: string
    sql: ${TABLE}.nonce ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number {
    type: sum
    sql: ${number} ;;  }
  measure: average_number {
    type: average
    sql: ${number} ;;  }

  dimension: parent_hash {
    type: string
    sql: ${TABLE}.parent_hash ;;
  }

  dimension: receipts_root {
    type: string
    sql: ${TABLE}.receipts_root ;;
  }

  dimension: sha3_uncles {
    type: string
    sql: ${TABLE}.sha3_uncles ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: state_root {
    type: string
    sql: ${TABLE}.state_root ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_difficulty {
    type: number
    sql: ${TABLE}.total_difficulty ;;
  }

  dimension: transaction_count {
    type: number
    sql: ${TABLE}.transaction_count ;;
  }

  dimension: transactions_root {
    type: string
    sql: ${TABLE}.transactions_root ;;
  }
  measure: count {
    type: count
  }
}
