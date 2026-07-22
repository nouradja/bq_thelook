view: lr_8_aubv1784618526573_my_pdt {
  sql_table_name: `looker_test.LR_8AUBV1784618526573_my_pdt` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
