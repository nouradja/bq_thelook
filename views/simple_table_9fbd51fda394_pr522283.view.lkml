view: simple_table_9fbd51fda394_pr522283 {
  sql_table_name: `looker_test.simple_table_9fbd51fda394_pr522283` ;;
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
