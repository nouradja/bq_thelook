view: simple_table_99cf14642c18b5d8 {
  sql_table_name: `looker_test.simple_table_99cf14642c18b5d8` ;;
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
