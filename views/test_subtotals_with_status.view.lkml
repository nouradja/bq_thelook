view: test_subtotals_with_status {
  sql_table_name: `looker_test.test_subtotals_with_status` ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
  }
}
