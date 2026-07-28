view: nested {
  sql_table_name: `looker_test.nested` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: addresses {
    hidden: yes
    sql: ${TABLE}.addresses ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: nested__addresses {

  dimension: address {
    type: string
    sql: address ;;
  }
  dimension: city {
    type: string
    sql: city ;;
  }
  dimension: nested__addresses {
    type: string
    hidden: yes
    sql: nested__addresses ;;
  }
  dimension: state {
    type: string
    sql: state ;;
  }
  dimension: zip {
    type: zipcode
    sql: zip ;;
  }
}
