view: users {
  sql_table_name: `looker_test.users` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: epoch_at {
    type: number
    sql: ${TABLE}.epoch_at ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: yyyymmdd_at {
    type: number
    sql: ${TABLE}.yyyymmdd_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	orders.count,
	orders_19648cd67f557f35.count,
	orders_19648cd67f55.count,
	orders_19648cd67f55_s0.count,
	orders_19648cd67f55_s1.count,
	orders_5da2af78e95a_pr523923.count,
	orders_5da2af78e95a.count,
	orders_5da2af78e95a_s0.count,
	orders_5da2af78e95a_pr522283.count,
	orders_5da2af78e95a_s0_pr523544.count,
	orders_5da2af78e95a_s2.count,
	orders_5da2af78e95a_s1.count,
	orders_5da2af78e95a_s2_pr523544.count,
	orders_7802ca3ed416ac3d.count,
	orders_9374bba7ce2d.count,
	orders_5da2af78e95a_s1_pr523544.count,
	orders_9374bba7ce2d_pr522283.count,
	orders_9374bba7ce2d_s2.count,
	orders_9374bba7ce2d_s0.count,
	orders_9374bba7ce2d_s1.count,
	orders_date_string_test2.count,
	orders_date_string.count,
	orders_base_copy.count,
	vijaya_order_test.count
	]
  }

}
