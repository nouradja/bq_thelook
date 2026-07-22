view: simple_table_9fbd51fda394_s0 {
  sql_table_name: `looker_test.simple_table_9fbd51fda394_s0` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
