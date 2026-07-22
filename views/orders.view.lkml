view: orders {
  sql_table_name: `looker_test.orders` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
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
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	users.name,
	users.id,
	billion_orders_wide.count,
	billion_orders.count,
	hundred_million_orders.count,
	hundred_million_orders_wide.count,
	order_items_57d25a746d03.count,
	order_items.count,
	order_items_febd02327d10.count,
	order_items_57d25a746d03_s0.count,
	order_items_57d25a746d03_s1.count,
	order_items_febd02327d10_s1.count,
	order_items_57d25a746d03_pr522283.count,
	order_items_febd02327d10495b.count,
	order_items_febd02327d10_s0.count,
	order_items_57d25a746d03_s2.count
	]
  }

}
