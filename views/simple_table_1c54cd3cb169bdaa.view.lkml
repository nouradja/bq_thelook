view: simple_table_1c54cd3cb169bdaa {
  sql_table_name: `looker_test.simple_table_1c54cd3cb169bdaa` ;;
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
