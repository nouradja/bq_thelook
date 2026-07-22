view: self_service___generate_random_excel_data_1781633858203928064_e7g2_2663_1___r3 {
  sql_table_name: `looker_test.self_service___generate_random_excel_data_1781633858203928064_e7g2_2663_1___r3` ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
  }
}
