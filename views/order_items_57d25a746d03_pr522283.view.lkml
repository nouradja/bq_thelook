view: order_items_57d25a746d03_pr522283 {
  sql_table_name: `looker_test.order_items_57d25a746d03_pr522283` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, orders.id]
  }
}
