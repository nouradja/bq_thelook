view: self_service___sheet1_1781634574273541888_y2k6_2663_1___r4 {
  sql_table_name: `looker_test.self_service___sheet1_1781634574273541888_y2k6_2663_1___r4` ;;

  dimension: descriptions {
    type: string
    sql: ${TABLE}.descriptions ;;
  }
  dimension: product_brand {
    type: string
    sql: ${TABLE}.product_brand ;;
  }
  dimension: product_retail_price {
    type: number
    sql: ${TABLE}.product_retail_price ;;
  }
  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }
  dimension: product_wholesale_cost {
    type: number
    sql: ${TABLE}.product_wholesale_cost ;;
  }
  dimension: someveryveryverylongtitletotestifweneedtruncationstill {
    type: number
    sql: ${TABLE}.someveryveryverylongtitletotestifweneedtruncationstill ;;
  }
  dimension: store_city {
    type: string
    sql: ${TABLE}.store_city ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }
  dimension: store_state {
    type: string
    sql: ${TABLE}.store_state ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
  }
}
