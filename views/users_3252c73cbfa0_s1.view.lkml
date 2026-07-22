view: users_3252c73cbfa0_s1 {
  sql_table_name: `looker_test.users_3252c73cbfa0_s1` ;;
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
    drill_fields: [id, name]
  }
}
