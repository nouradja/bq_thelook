view: self_service___catalog_products_1784703420399328000_77t2_3094_1 {
  sql_table_name: `looker_test.self_service___catalog_products_1784703420399328000_77t2_3094_1` ;;

  dimension: _handleid {
    type: string
    sql: ${TABLE}._handleid ;;
  }
  dimension: additionalinfodescription1 {
    type: string
    sql: ${TABLE}.additionalinfodescription1 ;;
  }
  dimension: additionalinfodescription2 {
    type: string
    sql: ${TABLE}.additionalinfodescription2 ;;
  }
  dimension: additionalinfodescription3 {
    type: string
    sql: ${TABLE}.additionalinfodescription3 ;;
  }
  dimension: additionalinfodescription4 {
    type: string
    sql: ${TABLE}.additionalinfodescription4 ;;
  }
  dimension: additionalinfodescription5 {
    type: string
    sql: ${TABLE}.additionalinfodescription5 ;;
  }
  dimension: additionalinfodescription6 {
    type: string
    sql: ${TABLE}.additionalinfodescription6 ;;
  }
  dimension: additionalinfotitle1 {
    type: string
    sql: ${TABLE}.additionalinfotitle1 ;;
  }
  dimension: additionalinfotitle2 {
    type: string
    sql: ${TABLE}.additionalinfotitle2 ;;
  }
  dimension: additionalinfotitle3 {
    type: string
    sql: ${TABLE}.additionalinfotitle3 ;;
  }
  dimension: additionalinfotitle4 {
    type: string
    sql: ${TABLE}.additionalinfotitle4 ;;
  }
  dimension: additionalinfotitle5 {
    type: string
    sql: ${TABLE}.additionalinfotitle5 ;;
  }
  dimension: additionalinfotitle6 {
    type: string
    sql: ${TABLE}.additionalinfotitle6 ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: collection {
    type: string
    sql: ${TABLE}.collection ;;
  }
  dimension: cost {
    type: string
    sql: ${TABLE}.cost ;;
  }
  dimension: customtextcharlimit1 {
    type: string
    sql: ${TABLE}.customtextcharlimit1 ;;
  }
  dimension: customtextcharlimit2 {
    type: string
    sql: ${TABLE}.customtextcharlimit2 ;;
  }
  dimension: customtextfield1 {
    type: string
    sql: ${TABLE}.customtextfield1 ;;
  }
  dimension: customtextfield2 {
    type: string
    sql: ${TABLE}.customtextfield2 ;;
  }
  dimension: customtextmandatory1 {
    type: string
    sql: ${TABLE}.customtextmandatory1 ;;
  }
  dimension: customtextmandatory2 {
    type: string
    sql: ${TABLE}.customtextmandatory2 ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: discountmode {
    type: string
    sql: ${TABLE}.discountmode ;;
  }
  dimension: discountvalue {
    type: number
    sql: ${TABLE}.discountvalue ;;
  }
  dimension: fieldtype {
    type: string
    sql: ${TABLE}.fieldtype ;;
  }
  dimension: inventory {
    type: string
    sql: ${TABLE}.inventory ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: productimageurl {
    type: string
    sql: ${TABLE}.productimageurl ;;
  }
  dimension: productoptiondescription1 {
    type: string
    sql: ${TABLE}.productoptiondescription1 ;;
  }
  dimension: productoptiondescription2 {
    type: string
    sql: ${TABLE}.productoptiondescription2 ;;
  }
  dimension: productoptiondescription3 {
    type: string
    sql: ${TABLE}.productoptiondescription3 ;;
  }
  dimension: productoptiondescription4 {
    type: string
    sql: ${TABLE}.productoptiondescription4 ;;
  }
  dimension: productoptiondescription5 {
    type: string
    sql: ${TABLE}.productoptiondescription5 ;;
  }
  dimension: productoptiondescription6 {
    type: string
    sql: ${TABLE}.productoptiondescription6 ;;
  }
  dimension: productoptionname1 {
    type: string
    sql: ${TABLE}.productoptionname1 ;;
  }
  dimension: productoptionname2 {
    type: string
    sql: ${TABLE}.productoptionname2 ;;
  }
  dimension: productoptionname3 {
    type: string
    sql: ${TABLE}.productoptionname3 ;;
  }
  dimension: productoptionname4 {
    type: string
    sql: ${TABLE}.productoptionname4 ;;
  }
  dimension: productoptionname5 {
    type: string
    sql: ${TABLE}.productoptionname5 ;;
  }
  dimension: productoptionname6 {
    type: string
    sql: ${TABLE}.productoptionname6 ;;
  }
  dimension: productoptiontype1 {
    type: string
    sql: ${TABLE}.productoptiontype1 ;;
  }
  dimension: productoptiontype2 {
    type: string
    sql: ${TABLE}.productoptiontype2 ;;
  }
  dimension: productoptiontype3 {
    type: string
    sql: ${TABLE}.productoptiontype3 ;;
  }
  dimension: productoptiontype4 {
    type: string
    sql: ${TABLE}.productoptiontype4 ;;
  }
  dimension: productoptiontype5 {
    type: string
    sql: ${TABLE}.productoptiontype5 ;;
  }
  dimension: productoptiontype6 {
    type: string
    sql: ${TABLE}.productoptiontype6 ;;
  }
  dimension: ribbon {
    type: string
    sql: ${TABLE}.ribbon ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  dimension: surcharge {
    type: string
    sql: ${TABLE}.surcharge ;;
  }
  dimension: visible {
    type: yesno
    sql: ${TABLE}.visible ;;
  }
  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
