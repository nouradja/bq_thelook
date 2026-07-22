view: test_subtotals {
  sql_table_name: `looker_test.test_subtotals` ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: order_amount {
    type: number
    sql: ${TABLE}.order_amount ;;
  }
  measure: count {
    type: count
  }
}
