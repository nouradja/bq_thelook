view: lr_8_ardr1784618533110_my_explore_my_agg_table {
  sql_table_name: `looker_test.LR_8ARDR1784618533110_my_explore_my_agg_table` ;;

  dimension: my_explore_count {
    type: number
    sql: ${TABLE}.my_explore_count ;;
  }
  dimension: my_explore_id {
    type: number
    sql: ${TABLE}.my_explore_id ;;
  }
  measure: count {
    type: count
  }
}
